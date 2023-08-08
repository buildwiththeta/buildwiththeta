# [Theta](https://buildwiththeta.com): streamlined cross-platform server-driven UI

Build your server-driven design system effortlessly, without writing code. Seamlessly integrate it into your codebase alongside your preferred packages, enabling easy UI updates without the need to rebuild the entire app.

- Documentation: https://docs.buildwiththeta.com

You can share the remote user interface on the following platforms using Theta:

- **iOS**
- **Android**
- **Web**
- **VisionOS**
- **macOS**
- **Windows**

<img width="600px" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/c2594691-69a9-45c5-94f7-ea1d808d63bc" />

## Why Theta?

Theta simplifies the creation and maintenance of remote design systems. It allows the user interface of front-end applications on different platforms to be updated in real time from a central cloud, eliminating the need for users to download a new version. 

### Developers shouldn't hardcode UI components

Server-driven design systems focus on creating dynamic user interfaces (UIs) that can be updated in real-time via APIs. Instead of hardcoding design components into the app, they are stored remotely. This allows central updates that are propagated instantly across all instances of the app, without the need for user downloads.

Theta offers several advantages:
- **⚡️ Integrate tonight**: Theta provides a no-code environment for designing the UI that can be integrate directly into your project with SDKs (Flutter, Swift coming soon). Theta doesn’t limit what you can do with the rest of your app. Developers can implement actions in whatever way they see fit, using the technologies they’re most comfortable with.
- **🔀 Interoperability with your codebase**: Connect remote UI components with your code. You can embed complex platform-specific widgets like maps, web views, media players, and camera feeds within your remote UI, or add a UIBox() inside an existing custom page to make it dynamic.
- **🧋 Team collaboration and version control:** Theta provides tools for team collaboration, project logs, and branches, facilitating efficient teamwork in app development. The version control feature allows tracking and management of different versions of the your design system components, a crucial aspect for maintaining app quality and addressing bugs or issues.
- **💫 Efficiency:** Remote design systems like Theta allow for design updates to be rolled out instantly via API, across all instances of the app. This bypasses the traditional cycle of updating and downloading new app versions. Also, because the design system is centralized, it ensures a consistent look and feel across all platforms, enhancing the user experience.

## Integrate tonight

![Theta_extended_negative-large 12](https://github.com/buildwiththeta/buildwiththeta/assets/49411143/ec0a50fc-e946-4750-95c5-1af84776f461)

### Initialize Theta

1. Initialize Theta by calling `Theta.initialize` with your anonymous key.
2. Wrap your app with `ThetaProvider` to enable any UIBox to receive the theme and project styles.

```dart
import 'package:theta/theta.dart';

Future<void> main() async {
    await Theta.initialize(anonKey: 'thetaKey');
    
    runApp(
        ThetaProvider(
            theme: ThemeMode.light,
            child: MaterialApp(
                home: // ...
            ),
        )
    );
}
```

### Display components

Everything you need to do is to add a `UIBox` widget to your app and pass the component name as a parameter.


Use `branch` to specify the branch of the component to render. If not specified, the default branch will be used.

> This is useful for testing new features without affecting the production environment or for versioning the component.

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

## Interoperability with your code

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
