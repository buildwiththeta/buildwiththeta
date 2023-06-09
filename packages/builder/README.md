# Theta

Theta Flutter library.

- Documentation: https://docs.buildwiththeta.com


## What is [Theta](https://buildwiththeta.com)?

Theta is a platform designed for rendering dynamic user interfaces seamlessly within your Flutter applications.

- Effortless dynamic UI rendering: Display no-code UIs by eliminating the need to deploy or rebuild the app for each change.
- Custom code directly from within your app, mixing no-code and code.
- Test the user interface against various conditions and user properties in real time to help you find the best user experience.
- Lightweight and secure.

## How it works?

- Design interfaces on Theta (Figma import and AI generative generation support are planned in the future).
- Add the user interface elements within the app.
- Update the UI without rebuilding the app.

---

## Getting started

### Initialize Theta

Initialize Theta by calling `Theta.initialize` with your anonymous key.
Be sure to call this method at the root of your app.

```dart
import 'package:theta/theta.dart';

Future<void> main() async {
    await Theta.initialize(anonKey: 'thetaKey');

    // ...
}
```

### Wrap your app with ThetaProvider

Wrap your app with `ThetaProvider` to enable any UIBox to receive the theme and project styles.
    
```dart
ThetaProvider(
    theme: ThemeMode.light,
    child: MaterialApp(
        home: // ...
    ),
)
```

### Render remote UI

Everything you need to do is to add a `UIBox` widget to your app and pass the component name as a parameter.

```dart
return Scaffold(
    body: Center(
        child: UIBox('Component name'),
    ),
);
```

### Loading placeholder and error handling

You can display a placeholder widget during loading and an error widget.

```dart
UIBox(
    'Homepage',
    placeholder: CircularProgressIndicator(),
    errorWidget: (error) => Text(error),
)
```

### Add custom code for actions

Want a dynamic UI with gesture support (onTap, doubleTap, etc.)? You can add functions, called 'workflows', based on gesture triggers.

- Select a single UI element based on its id or name.
- Choose the trigger for which the action will start.
- Add a method.

```dart
UIBox(
    'AppBar',
    workflows: [
        Workflow('Container s4l3s', Trigger.onTap, () {
            // Do something
        }),
    ],
)
```

### Override child

You can override the child of a node with a custom widget by mixing no-code with Flutter. 
If in the no-code component the node to which you want to overwrite the child already has one, 
it will be removed and replaced with the one entered via code.

```dart
UIBox(
    'Component name',
    overrides: const [
        Override(
            nodeIdenfier: 'node-id',
            props: [
                ChildProperty(child: CircularProgressIndicator()),
            ],
        ),
    ],
),
```

### Override children

You can also overwrite the children of a node. 

```dart
UIBox(
    'Component name',
    overrides: const [
        Override(
            nodeIdenfier: 'node-name',
            props: [
                ChildrenProperty(children: [
                    Text('Click me!'),
                    // other widgets
                ]),
            ],
        )
    ],
),
```

### Mixing of different `UIBox`

You can also use the `UIBox` within other `UIBox`es. This provides a very high degree of customization.

```dart
UIBox(
    'Wrapper Widget',
    overrides: const [
        Override(
            nodeIdenfier: 'node-id',
            props: [
                ChildProperty(child: UIBox('Primary Button')),
            ],
        ),
    ],
),
```

---

## Status

- ✅ Alpha: experimental. Expect breaking changes.
- ✅ Closed Beta: ready for testing. Expect bugs and missing features.

## Compatibility

- ✅ Web
- ✅ Android (with minSdkVersion >= 19)
- ✅ iOS
- ✅ macOS
- ✅ Windows

Read more about configuration in the [documentation](https://docs.buildwiththeta.com/en/builder/compatibility).

## Contributing

See [CONTRIBUTING.md](https://github.com/buildwiththeta/buildwiththeta/blob/main/CONTRIBUTING.md) for details.

## License

Build with Theta packages are licensed under the Apache License 2.0. See [LICENSE](https://github.com/buildwiththeta/buildwiththeta/blob/main/LICENSE) for details.

## Resources

- [▶️ Video tutorial](https://www.youtube.com/watch?v=oFed0NIqBZI)
- [⚡️ Website](https://buildwiththeta.com)
- [🧑‍🏫 Documentation](https://docs.page/buildwiththeta/buildwiththeta/)
- [🐱 GitHub](https://github.com/buildwiththeta/buildwiththeta)
- [🐦 Twitter](https://twitter.com/buildwiththeta)

<img src="https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/logos/Theta_extended_negative-large.svg">
