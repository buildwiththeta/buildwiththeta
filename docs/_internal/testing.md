# Testing

To follow this guide, make sure Melos is configured within the repository.
Melos is installed in:
- buildwiththeta/buildwiththeta

## Running testa

```bash
melos run test
```

---

## Running tests with coverage report

1. Install lcov:

```bash
brew install lcov
```

2. Run tests and generate report

```bash
melos run cov
```

3. Open `coverage/index.html` in browser to view the report.

You can run `melos run open_cov` on macOS to open the report in browser.
