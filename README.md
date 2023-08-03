## Getting Started with Theta

To begin your Theta journey, follow these steps:

### 1.Sign Up

1. To begin your Theta journey, sign up for Theta on the [buildwiththeta.com](https://buildwiththeta.com) website.
2. Please note that an invite is required during the closed beta phase.
3. Feel free to join our community on [Discord](https://discord.com/invite/xNgDkZ2g6w) for discussions and support.

### 2.Create a New Project

1. After signing up, create a new project on the Theta platform.
2. Design your first interface by adding and arranging UI components to your liking.

### 3.Get Your API Key

1. To interact with your project, you'll need to obtain your API key from the project settings.
2. Save this API key in a safe place, as you'll need it for the next steps.

### 4.Set Your Anon Key

1. Inside your project at app.buildwiththeta.com, you'll find your Anon Key.
2. Ensure you add this key to your Flutter project to authenticate your app with Theta.

### 5.Create a New Flutter Project

1. Now, create a new Flutter project using your favorite IDE.

### 6.Modify `main.dart`

1. Update your `main.dart` with the following code:

```dart
import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  await Theta.initialize(
    cacheEnabled: false,
    anonKey: 'YOUR_ANON_KEY',
  );

  runApp(
    const ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        title: 'Theta Example App',
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UIBox(
        'Homepage', // Component name
        placeholder: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
```

2. Replace `'YOUR_ANON_KEY'` with your actual Anon Key.

### 7.Install Theta Client Library

1. Install the Theta client library by running the following command in your Flutter project:

```bash
flutter pub add theta
```

### 8.Run Your App

1. Now, you can run your app using the Chrome browser:

```bash
flutter run -d chrome
```

2. Your app should now be running with the Theta UI component specified in the `UIBox` widget.

Congratulations! You've taken the first steps towards leveraging the power of Theta to create a unique and customized user experience in your Flutter app. Keep exploring the possibilities, and don't hesitate to consult the Theta documentation for more advanced features and customization options. Happy coding!
