import 'package:example/theta_ui_widgets.g.dart';
import 'package:flutter/material.dart';

void main() async {
  await initializeThetaClient();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: PaywallWidget(
        initialTheme: ThemeMode.light,
        isLive: true,
      )),
    );
  }
}
