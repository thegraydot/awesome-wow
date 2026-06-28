# Contributing to Awesome WoW

Thank you for your interest in contributing! This list covers resources for:

- **Vanilla (1.12)**
- **The Burning Crusade (2.4.3)**
- **Wrath of the Lich King (3.3.5)**

## Table of contents

- [How to contribute](#how-to-contribute)
- [Editing the list](#editing-the-list)
- [Entry format](#entry-format)
- [Criteria for inclusion](#criteria-for-inclusion)
- [Building the README locally](#building-the-readme-locally)

## How to contribute

1. Fork the repository and create a feature branch.
1. Edit the relevant file inside `sections/` (see below).
1. Open a pull request with a brief description of the addition or change.

CI will automatically lint your changes. You do **not** need to run `make build` locally, as the README is rebuilt automatically when your PR is merged to `main`.

## Editing the list

The `README.md` in the root is **generated**, so do not edit it directly. All content lives in the `sections/` directory:

## Entry format

Each entry must follow this pattern:

```markdown
- [Name](URL): Brief single-sentence description. ![Expansion](assets/icon_<tag>.png)
```

- Start with a capital letter.
- Use a colon (`:`) to separate the name from the description.
- Attach one or more expansion badges at the end of the line (see below).
- Keep entries in **alphabetical order** within each section.

### Expansion badges

| Badge | Expansion | Tag |
|---|---|---|
| ![Vanilla](assets/icon_vanilla.png) | Vanilla 1.12 | `vanilla` |
| ![TBC](assets/icon_tbc.png) | The Burning Crusade 2.4.3 | `tbc` |
| ![WotLK](assets/icon_wotlk.png) | Wrath of the Lich King 3.3.5 | `wotlk` |

Badge syntax: `![Tag](assets/icon_<tag>.png)`

## Criteria for inclusion

- **Relevance**: must directly relate to Vanilla, TBC, or WotLK development, modding, tooling, or community. No retail-only content.
- **Scope**: no resources targeting expansions beyond Wrath of the Lich King.
- **Quality**: must be actively maintained *or* historically significant with clear documentation. Abandonware without docs will be removed.
- **No duplicates**: check existing entries before submitting.

## Building the README locally

Requirements: `bash`, `make`, `diff` (standard on any Linux/macOS system).

```bash
# Rebuild README.md from sections/
make build

# Check whether README.md is up to date (same check run in CI)
make check
```
