# [Theta](https://buildwiththeta.com)

## The new way of designing remote design systems

Visually design your remote design system. Integrate it seamlessly into your code base along with your favorite packages, allowing you to instantly update the UI remotely.

![Theta_extended_negative-large 12](https://github.com/buildwiththeta/buildwiththeta/assets/49411143/ec0a50fc-e946-4750-95c5-1af84776f461)


Theta Flutter library.

- Documentation: https://docs.buildwiththeta.com.
- See examples on [GitHub](https://github.com/buildwiththeta/buildwiththeta/tree/main/examples).


## What is [Theta](https://buildwiththeta.com)?

Theta is a platform designed for rendering remote user interfaces seamlessly within your Flutter projects.

- **Remote UI**: Visually design your user interface on Theta, and visualize it in apps with instant updates.
- **No internet connection required**: Preload the remote UIs for offline use.
- **Mix no-code within your codebase**: Add custom code directly from your existing code, using any library / sdk.
- **Testable**: Test the user interface with unit tests and integrate your favorite analysis tool to monitor user behavior.

## Why Theta?

- Use Theta in an existing app to enhance collaboration between designers and devs on your team and increase the ability to update and test your UI through instant updates.
- Use Theta in a new project to create your design system visually, using it with your favorite packages for the best possible quality.

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


Use `branch` to specify the branch of the component to render. If not specified, the default branch will be used.
This is useful for testing new features without affecting the production environment or for versioning the component.

```dart
return Scaffold(
    body: Center(
        child: UIBox(
            'Component name', 
            branch: '1.0.0',
        ),
    ),
);
```

### Loading placeholder and error handling

You can display a placeholder widget during loading and an error widget.

```dart
UIBox(
    'Homepage',
    placeholder: CircularProgressIndicator(),
    errorWidget: (error) => Text(error.toString()),
)
```

### Use a controller

Use a controller for greater control of the remote component.

```dart
final controller = UIBoxController();

controller.onLoaded(() {
    debugPrint('Loaded!');
    debugPrint('Component ID: ${controller.componentID}');
    debugPrint('Nodes: ${controller.nodesToList()}');
});
controller.onError((error) => debugPrint(error.toString()));

UIBox(
    'Feed',
    controller: controller,
);

controller.dispose();
```

### Add custom actions

Want a dynamic UI with gesture support (onTap, doubleTap, etc.)? You can add functions, called `workflows`, based on gesture triggers.

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


### Overrides

- Documentation: [https://docs.buildwiththeta.com/en/builder/overrides](https://docs.buildwiththeta.com/en/builder/overrides)

You can override each UI block with a Flutter widget by mixing no-code with Flutter. 

```dart
UIBox(
    'Social card',
    overrides: [
        // Override a node with a Flutter widget
        Override(
            'Button',
            builder: (context, node, child, children) {
                return GestureDetector(
                    onTap: () {
                        debugPrint('Tapped!');
                    },
                    child: Container(
                        color: Colors.black,
                        child: child, // You can even use the original child 
                    ),
                );
            },
        ),

        // Override a node of a component with a custom text and color
        Override(
            'Post title',
            component: 'Component id',
            text: 'My beautiful cat',
            color: Colors.white,
        ),

        // Override a node of a component with a custom image
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
        // Override the child of an element
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
        // Override the children of an element
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
- ✅ Invite-only Beta: ready to be used in production. Expect some bugs and missing features.

Looking for an invitation? Ask on [Twitter](https://twitter.com/intent/tweet?text=Hey%2C%20I%27m%20looking%20for%20an%20invitation%20code%20for%20%40buildwiththeta%2C%20can%20anyone%20help%20me%20please%3F%20).

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

- [⚡️ Website](https://buildwiththeta.com)
- [🧑‍🏫 Documentation](https://docs.buildwiththeta.com)
- [▶️ Youtube](https://www.youtube.com/channel/UCuj5yqb6kx_gXTHXlTGNF0Q)
- [🐱 GitHub](https://github.com/buildwiththeta/buildwiththeta)
- [🐦 Twitter](https://twitter.com/buildwiththeta)
- [👾 Discord](https://discord.gg/xNgDkZ2g6w)
- [📝 Read our blog](https://blog.buildwiththeta.com/blog)
- [☄️ Releases](https://github.com/buildwiththeta/buildwiththeta/releases)

<img src="https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/covers/banner-email-min.png">
