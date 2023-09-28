## Theta CLI

![https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/docs/theta_cli.jpg](https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/docs/theta_cli.jpg)

Theta CLI allows the remote user interface to be preloaded for use without an Internet connection.

- [📚 Read the documentation](https://docs.buildwiththeta.com/en/cli/introduction)

---

## Getting Started 🚀

Activate Theta CLI globally via:

```sh
dart pub global activate theta_cli
```

## Usage

### Link the CLI to your project.

```sh
$ theta link -anon-key ANON_KEY
```

### Retrieve the names and ids of the nodes.

Avoid writing strings into the code. Instead, you can retrieve
all the names and ids of the nodes in the project and use them safely.

```sh
$ theta load-names
```

### Preload components

Preload your files for `Preloaded` connection mode.

```sh
$ theta preload
```

The command `preload` allows you to preload the remote user interface for use without an Internet connection.
It preloads also the images used in the remote user interface.

Run this command inside the root of a Flutter app. The folder must contain a `pubspec.yaml` file.

### Other commands

```sh
# Show CLI version
$ theta --version

# Update CLI
$ theta update

# Show usage help
$ theta --help
```

