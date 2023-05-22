import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  await Theta.initialize(anonKey: 'thetaKey');
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
    return ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        home: Scaffold(
          body: UIBox(
            'Homepage',
            placeholder: () => const CircularProgressIndicator(),
            errorWidget: (error) => Text(error),
            workflows: [
              Workflow(
                'Container l3l2s',
                Trigger.onHover,
                () => debugPrint('Hovered!'),
              ),
              Workflow(
                'Text a34b8',
                Trigger.onTap,
                () => debugPrint('Tapped!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
