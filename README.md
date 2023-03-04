# 🐍 Python TDD Boilerplate

## 🧑‍🏭 Setup

> [Pyenv](https://www.wolfremium.dev/blog/python-multiple-versions) >
> [Makefile](https://hernandis.me/2017/03/20/como-hacer-un-makefile.html)

After `pyenv` installation, run this in this directory:

```bash
pyenv install 3.10.9
```

Set default Python version for current directory:

```bash
pyenv local 3.10.9
```

Basic setup to use pipenv.

```bash
python -m pip install -U pip && pip install pipenv
```

This project includes make commands to make your life easier.

```bash
sudo apt-get install make
```

Install all the dependencies, and generates a virtual environment.

```bash
make setup
```

## 🧑‍💻 Commands

Run `make help` to see all available commands.

## 📚 Testing libraries

- [UnitTest](https://docs.python.org/3/library/unittest.html)
- [Pytest](https://docs.pytest.org/en/7.1.x/getting-started.html#get-started)
- [Hypothesis](https://hypothesis.readthedocs.io/en/latest/quickstart.html)
- [Intro to property-based testing in Python](https://www.freecodecamp.org/news/intro-to-property-based-testing-in-python-6321e0c2f8b/)

## 💩 Troubleshooting

- [Select VSCode Interpreter (modules not found after installation)](https://code.visualstudio.com/docs/python/environments#_select-and-activate-an-environment)
