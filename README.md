# 🐍 Python TDD Boilerplate

## 📝 Setup project

- ### [Setup python guide](https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-windows-10)

- ### [Make manual](https://es.wikipedia.org/wiki/Make)

## 💩 Troubleshooting

- [Setup of the project from 0](https://sourcery.ai/blog/python-best-practices/)
- [Select VSCode Interpreter (modules not found after installation)](https://code.visualstudio.com/docs/python/environments#_select-and-activate-an-environment)

## 🧐 References

- [UnitTest](https://docs.python.org/3/library/unittest.html)
- [Pytest](https://docs.pytest.org/en/7.1.x/getting-started.html#get-started)
- [Hypothesis](https://hypothesis.readthedocs.io/en/latest/quickstart.html)
- [Intro to property-based testing in Python](https://www.freecodecamp.org/news/intro-to-property-based-testing-in-python-6321e0c2f8b/)

## 🧑‍💻 Install project

### Make

```bash
make setup
```

### Pipenv

```bash
# Install dependencies
pipenv install --dev
```

## 🧪 Tests

### Make

```bash
make tests
```

### Pytest

```bash
pipenv run pytest
```

Run tests with coverage:

```bash
pipenv run pytest --cov
```

## 🎨 Linter

### Make

```bash
make lint
```

### Autopep

```bash
pipenv run autopep8 -i -r ./
```

### Flake

```bash
pipenv run flake8 ./
```
