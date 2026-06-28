SHELL  := /bin/bash
SCRIPT := ./bundle.sh

.PHONY: help
help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  %-10s %s\n", $$1, $$2}'

.PHONY: bundle
bundle: ## Bundle README.md from sections/
	@bash $(SCRIPT)

.PHONY: check
check: ## Verify README.md is up-to-date (used in CI)
	@bash $(SCRIPT) --check
