# Python examples

## Setup project

### [Setup python guide](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-windows-10)

### Install project

```bash
# Install dependencies
pipenv install --dev
```

## Troubleshooting

- [Setup of the project from 0](https://sourcery.ai/blog/python-best-practices/)
- [Select VSCode Interpreter (modules not found after installation)](https://code.visualstudio.com/docs/python/environments#_select-and-activate-an-environment)

## Tests

Run tests:

```bash
pipenv run pytest
```

Run tests with coverage:

```bash
pipenv run pytest --cov
```

## Linter

Autopep
```bash
pipenv run autopep8 -i -r ./
```

Flake
```bash
pipenv run flake8 ./
```