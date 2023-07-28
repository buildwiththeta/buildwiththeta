# Flutter example with Theta and Firebase Analytics

With Theta, the UI of the application can be created visually, and it can be updated instantly.

This application is a basic example of how to send events to Firebase Analytics using Theta package. You can track which component was loaded, which branch was used, or see how to use Workflows to track user gestures.

Main code:

```dart
final controller = UIBoxController();

@override
    void initState() {
    super.initState();
    controller.onLoaded(() async {
        await widget.analytics.logScreenView(
        screenName: controller.componentName,
        );
        await widget.analytics.logEvent(
        name: controller.componentName,
        parameters: {
            'component_id': controller.componentID,
            'branch': controller.branch,
            'created_at': widget.now,
        },
        );
    });
    controller.onError((error) async => await widget.analytics.logEvent(
        name: 'Error loading view',
        parameters: {
        'error': error.toString(),
        'component': controller.componentName,
        'component_id': controller.componentID,
        'branch': controller.branch,
        'created_at': widget.now,
        },
    ));
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        body: UIBox(
            'Component name',
            controller: controller,
            branch: 'Branch Name',
            errorWidget: (error) => Center(child: Text(error.toString())),
            workflows: [
                Workflow(
                    'Element',
                    Trigger.onTap,
                    () async => await widget.analytics.logEvent(
                        name: 'Open checkout',
                        parameters: {
                            'session': '...',
                            'component': controller.componentName,
                            'component_id': controller.componentID,
                            'branch': controller.branch,
                            'created_at': widget.now,
                        },
                    ),
                ),
            ],
        ),
    );
}
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
