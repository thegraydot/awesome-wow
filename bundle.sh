#!/usr/bin/env bash
# bundle.sh: Assemble README.md from sections/ with an auto-generated TOC
#
# Usage:
#   ./bundle.sh           (writes to README.md)
#   ./bundle.sh --check   (exits non-zero if README.md would change)
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SECTIONS_DIR="${REPO_ROOT}/sections"
OUTPUT="${REPO_ROOT}/README.md"
CHECK_MODE=false

for arg in "$@"; do
  [[ "${arg}" == "--check" ]] && CHECK_MODE=true
done

# Section files in display order. Edit this list to add, remove, or reorder sections.
SECTIONS=(
  documentation.md
  community.md
  server-emulators.md
  tools.md
  libraries.md
  contributing.md
)

# Approximate GitHub's heading-to-anchor algorithm:
#   Strip markdown backslash escapes  (C\# -> C#)
#   Lowercase
#   Remove every character that is not alphanumeric, space, or hyphen
#   Replace spaces with hyphens
make_anchor() {
  local text="$1"
  text="${text//\\/}"
  text="${text,,}"
  text="$(printf '%s' "${text}" | sed 's/[^a-z0-9 -]//g')"
  text="${text// /-}"
  printf '%s' "${text}"
}

TEMP="$(mktemp)"
trap 'rm -f "${TEMP}"' EXIT

# Generated-file notice + header
printf '<!-- This file is auto-generated from sections/. Do not edit directly.' >> "${TEMP}"
printf 'To update: edit the relevant file in sections/ then run: make build -->\n\n' >> "${TEMP}"
cat "${SECTIONS_DIR}/header.md" >> "${TEMP}"

# Auto-generated TOC
printf '\n## Contents\n\n' >> "${TEMP}"

for f in "${SECTIONS[@]}"; do
  filepath="${SECTIONS_DIR}/${f}"
  [[ -f "${filepath}" ]] || { printf 'Error: section file not found: %s\n' "${filepath}" >&2; exit 1; }
  while IFS= read -r line; do
    if [[ "${line}" =~ ^##[[:space:]]+(.+)$ ]]; then
      heading="${BASH_REMATCH[1]}"
      anchor="$(make_anchor "${heading}")"
      printf -- '- [%s](#%s)\n' "${heading}" "${anchor}" >> "${TEMP}"
    elif [[ "${line}" =~ ^###[[:space:]]+(.+)$ ]]; then
      heading="${BASH_REMATCH[1]}"
      anchor="$(make_anchor "${heading}")"
      printf '  - [%s](#%s)\n' "${heading}" "${anchor}" >> "${TEMP}"
    fi
  done < "${filepath}"
done

# Section content (each preceded by a horizontal rule)
for f in "${SECTIONS[@]}"; do
  printf '\n---\n\n' >> "${TEMP}"
  cat "${SECTIONS_DIR}/${f}" >> "${TEMP}"
  printf '\n' >> "${TEMP}"
done

# Write or check
if $CHECK_MODE; then
  if diff -q "${OUTPUT}" "${TEMP}" > /dev/null 2>&1; then
    printf 'README.md is up to date.\n'
  else
    printf 'README.md is out of date. Run: make build\n' >&2
    diff "${OUTPUT}" "${TEMP}" >&2 || true
    exit 1
  fi
else
  mv "${TEMP}" "${OUTPUT}"
  printf 'Built %s\n' "${OUTPUT}"
fi
