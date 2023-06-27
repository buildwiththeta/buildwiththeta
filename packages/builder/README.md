# [Theta](https://buildwiththeta.com)

## The open source way of designing remote UI

Build your remote design system effortlessly, without writing code. Seamlessly integrate it into your codebase alongside your preferred packages, enabling easy UI updates without the need to rebuild the entire app.

![Theta_extended_negative-large 12](https://github.com/buildwiththeta/buildwiththeta/assets/49411143/ec0a50fc-e946-4750-95c5-1af84776f461)


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

### Use a controller

Use a controller for greater control of the remote component.

```dart
final controller = UIBoxController();

controller.onLoaded(() {
    debugPrint('Loaded!');
    debugPrint(_controller.nodesToList().toString());
});
controller.onError((error) => debugPrint(error.toString()));

UIBox(
    'Feed',
    controller: controller,
);

controller.dispose();
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

## Component fit modes

- Documentation: [https://docs.buildwiththeta.com/en/studio/component_fit](https://docs.buildwiththeta.com/en/studio/component_fit)

### Absolute

Using the `absolute` fit mode, the component will be rendered with the exact coordinates of the component in the Theta Studio.

```dart
UIBox(
    'Component name',
    fit: ComponentFit.absolute,
)
```

### Auto Layout

Using the `autoLayout` fit mode, the component will be rendered with the coordinates of the component in the Theta Studio, but the size will be calculated automatically.

```dart
UIBox(
    'Component name',
    fit: ComponentFit.autoLayout,
)
```


## Overrides

- Documentation: [https://docs.buildwiththeta.com/en/builder/overrides](https://docs.buildwiththeta.com/en/builder/overrides)

You can override each UI block with a Flutter widget by mixing no-code with Flutter. 

```dart
UIBox(
    'Social card',
    overrides: [
        Override('Post title')
            ..setText('My beautiful cat')
            ..setColor(Colors.white, 0.5),
        Override('Cover')
            ..setImage('https://...'),
    ],
),
```

### Child override

If in the no-code component the element to which you want to overwrite the child already has one, 
it will be removed and replaced with the one entered by the user via code.

You can also use the `UIBox` within other `UIBox`es. This provides a very high degree of customization.

```dart
UIBox(
    'Component name',
    overrides: [
        Override('Element id')
            ..setChild(UIBox('Other component')),
    ],
),
```

### Children override

You can also overwrite the children of an element. 

```dart
UIBox(
    'Component name',
    overrides: [
        Override('Element name')
            ..setChildren([
                Text('Child 1'), 
                Text('Child 2')
            ]),
    ],
),
```

---

## Status

- ✅ Alpha: experimental. Expect breaking changes.
- ✅ Closed Beta: ready for conscientious use. Expect some bugs and missing features.

## Compatibility

- ✅ Web
- ✅ Android
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
- [🧑‍🏫 Documentation](https://docs.buildwiththeta.com)
- [🐱 GitHub](https://github.com/buildwiththeta/buildwiththeta)
- [🐦 Twitter](https://twitter.com/buildwiththeta)

<img src="https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/logos/Theta_extended_negative-large.svg">
