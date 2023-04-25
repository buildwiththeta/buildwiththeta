## Setting up project for development

This project uses [melos](https://melos.invertase.dev/) to manage the monorepo. To get started, clone the repository
and run the following commands:

1. Install melos. Make sure you have `.pub-cache/bin` in your path.

```bash
dart pub global activate melos
```

2. Getting started with melos.

```bash
melos bootstrap
```

This will create dependency overrides for all the packages in the monorepo.

3. Run `pub get` with melos.

```bash
melos run pub-get
```

Now you can run the example app. See `melos.yaml` for more commands.

---

### Running test

```bash
melos run test
```

---

### Running tests with coverage report

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