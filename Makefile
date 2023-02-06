PIPENV = PIPENV_IGNORE_VIRTUALENVS=1 pipenv
PIPENV_SAFE_RUN = PIPENV_DONT_LOAD_ENV=1 $(PIPENV) run
.DEFAULT_GOAL := help

.PHONY: help
help:  ## Show this help
	@grep -E '^\S+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "%-30s %s\n", $$1, $$2}'

.PHONY: setup
setup: .venv/lib  ## Install virtualenv dependencies, required for testing or regenerating the Pipfile.lock
	git config core.hooksPath scripts/hooks

.PHONY: tests
tests:  ## Locally run tests
	$(PIPENV) clean
	$(PIPENV_SAFE_RUN) pytest -n auto

.PHONY: pre-commit
pre-commit: .venv/lib  ## Run pre-commit steps
	$(PIPENV_SAFE_RUN) pre-commit run

.PHONY: .clean-venv
.clean-venv:
	$(PIPENV) --rm || true
	$(PIPENV) --rm || true  # second run because two virtualenvs may exists, the local at .venv and the one at ~/.virtualenvs/

.ONESHELL:
.venv/lib: Pipfile.lock
	pip install -U pipenv==v2022.9.24
	$(PIPENV) clean
	mkdir -p .venv
	$(PIPENV) install --dev --no-site-packages
	test -d .venv/lib && touch .venv/lib

.ONESHELL:
Pipfile.lock: Pipfile
	$(PIPENV) lock
