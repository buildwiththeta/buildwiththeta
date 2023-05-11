import 'package:flutter/material.dart';
import 'package:theta/src/presentation/ui_box.dart';
import 'package:theta/theta.dart';
import 'package:theta_models/theta_models.dart';

Future<void> main() async {
  await Theta.initialize(key);

  final widget = UIBox(
    'ArticleCard',
    placeholder: () => const CircularProgressIndicator(),
    errorWidget: (error) => Text(error),
    theme: ThemeMode.light,
  );
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
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: UIBox(
            'ArticleCard',
            placeholder: () => const CircularProgressIndicator(),
            errorWidget: (error) => Text(error),
            theme: ThemeMode.light,
            workflows: [
              Workflow('node_id', Trigger.onTap, () {
                
              })
            ],
          ),
        ),
      ),
    );
  }
}
