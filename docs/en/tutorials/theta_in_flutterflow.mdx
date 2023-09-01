---
title: Developing FlutterFlow Apps 2x Faster with Theta with Real-Time Updates
---

# Developing FlutterFlow Apps 2x Faster with Theta with Real-Time Updates

FlutterFlow and Theta combined can take your no-code development speed to the next level. 
This tutorial will guide you through integrating Theta with FlutterFlow for real-time updates and faster A/B testing.

## Advantages of integrating Theta

- **Real-Time UI Changes:** Instantly see the impact of your changes without having to rebuild or redeploy your app.
- **A/B Tests:** Run experiments to determine the most effective UI elements, all controlled via Theta.
- **Faster UI Building:** The Theta integration accelerates your UI building process by reducing the need for repeated manual updates.

## Prerequisites

- Basic understanding of Flutter
- Experience with FlutterFlow (or the willingness to use Flutter along with our existing Theta tutorial)
- A Theta account on buildwiththeta.com

---

# Steps

## Step 1: Create an Initialize Theta Custom Action

Create a new custom action in FlutterFlow. 

<img width="1440" alt="Screenshot 2023-09-01 at 15 10 53" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/b71f5715-7d4c-4d38-b365-7456d7f53816">

1. Add in Pubspec Dependencies: "theta: ^0.8.4"
2. Copy the following code into the code editor:

```dart
// Automatic FlutterFlow imports
// ... (other imports)
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:theta/theta.dart';

Future<void> initializeTheta() async {
  const key = 'your anon key here';
  await Theta.initialize(
    anonKey: key,
    componentsNames: ["Component Name"],
  );
}
```

3. Save the action as "initializeTheta".

---

## Step 2: Update main.dart file

<img width="1440" alt="Screenshot 2023-09-01 at 15 11 20" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/74ebcf25-5d2b-4012-ae84-ac7cd19e7103">

1. In the right sidebar go to Initial Actions > Add Custom Action > Choose "initializeTheta"
2. Your code will look like this with "await actions.initializeTheta();" in it.

```dart
import '/custom_code/actions/index.dart' as actions;
// ... (other imports)

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  // Start initial custom actions code
  await actions.initializeTheta();
  // End initial custom actions code

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}
```

---

## Step 3: Create a Custom Widget for importing the remote UI

<img width="1440" alt="Screenshot 2023-09-01 at 15 10 12" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/e01be9e2-aa75-4e0e-965f-809b9847373b">

Create a new custom widget in FlutterFlow, and copy the following code into it:

```dart
// Automatic FlutterFlow imports
// ... (other imports)

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

import 'package:theta/theta.dart';

class RemoteWidget extends StatelessWidget {
  const RemoteWidget({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ThetaProvider(
        theme: ThemeMode.light,
        child: UIBox("Component Name"),
      ),
    );
  }
}
```

---

## Step 4: Place the Custom Widget in the UI

Now, you can use this custom widget anywhere in your FlutterFlow project. 
Simply add the RemoteWidget where you need it, and it will render the Theta-controlled UI you defined earlier.

- In the editor:
<img width="1440" alt="Screenshot 2023-09-01 at 15 11 33" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/74562b6a-c4de-41b5-82b3-fb460f0c3788">

- In Test Mode:
<img width="1440" alt="Screenshot 2023-09-01 at 15 26 14" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/6322cd36-7273-40ba-81ba-b25252de86a1">

---

And there you have it! 
You've just significantly sped up your FlutterFlow development process by integrating Theta. 
Now you can easily use real-time updates, custom widgets, and advanced analytics functionalities to enhance your app.


