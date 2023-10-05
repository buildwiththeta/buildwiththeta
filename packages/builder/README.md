![Banner](https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/logos/banner_theta_flutter_colors.jpg)

<p align="center">
  <a href="https://pub.dev/packages/theta"><img src="https://img.shields.io/pub/v/theta?label=pub.dev&logo=dart" alt="pub"></a>
  <a href="https://github.com/buildwiththeta/buildwiththeta"><img src="https://img.shields.io/github/stars/buildwiththeta/buildwiththeta?logo=github" alt="github"></a>
  <a href="https://discord.gg/XGXrGEk4c6"><img src="https://img.shields.io/discord/1110506355728584714?logo=discord" alt="discord"></a>
  <a href="https://github.com/buildwiththeta/buildwiththeta"><img src="https://img.shields.io/github/contributors/buildwiththeta/buildwiththeta?logo=github" alt="contributors"></a>
</p>

<p align="center">
  <a href="https://docs.buildwiththeta.com/en/getting-started">Get started</a> •
  <a href="https://docs.buildwiththeta.com">Documentation</a> •
  <a href="https://github.com/buildwiththeta/buildwiththeta/tree/main/examples/">Examples</a> •
  <a href="https://discord.gg/XGXrGEk4c6">Community & Support</a> •
  <a href="https://buildwiththeta.com">Website</a>
</p>

# Theta

> Design to Flutter in 1 command.

- 🦄 Why? Hardcoding the entire UI is an expensive task. Convert your design into Flutter with 1 command.
- 👥 Who? Developers and teams who want to build UIs faster visually.

## Design to Flutter

*Tree steps:*

1. **Design your UI within our UI editor.**

- 🔗 [Website](https://buildwiththeta.com)

![Theta Studio](https://api.buildwiththeta.com/storage/v1/object/public/theta-assets/covers/263726701.jpg)

2. **Go in your Flutter project, and then open the terminal:**

```sh
$ dart pub active ...
```

Link your project to the CLI

```sh
$ theta link -k <anon key>
```

Then you can generate your files by running:

```sh
$ theta gen
```

3. **Use the generated UI widgets:**

Theta will generate the files in:
- lib
    - theta_ui_assets.g.dart
    - theta_ui_widgets.g.dart

And you can use them freely as normal widgets:

```dart
PaywallWidget(
    initialTheme: ThemeMode.light,
)
```

Before running your app, write at the root of your app:

```dart
await initializeThetaClient();
```

This will initialize Theta for your project.

**Congrats, you have now your UI 🥳**

## Fly-on-air widgets

There is an option for fetching widgets from the back-end in runtime.

You can easily active it by setting `isLive: true` on any widget.

```dart
PaywallWidget(
    initialTheme: ThemeMode.light,
    isLive: true,
)
```

By making it live, you can set A/B testing from Theta's editor or update its content in real-time.

---

### Contributing

See [CONTRIBUTING.md](https://github.com/buildwiththeta/buildwiththeta/blob/main/CONTRIBUTING.md) for details.

### License

Theta is licensed under the Apache License 2.0. See [LICENSE](https://github.com/buildwiththeta/buildwiththeta/blob/main/LICENSE) for details.

