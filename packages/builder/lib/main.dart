import 'package:flutter/material.dart';
import 'package:theta/src/presentation/ui_box.dart';
import 'package:theta/theta.dart';
import 'package:theta_models/theta_models.dart';

Future<void> main() async {
  await Theta.initialize(
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI4NGJjNDE3Yi1kMTRjLTQwODQtYjE5MC0yY2RkNDgxMWU4ZWIiLCJhbm9uX2tleSI6IjRhZDZhNDVlLWU3YWMtNGQzOC05OGVmLThjODVjODE3NzAyMiIsImlhdCI6MTY4NDI3MzQ4OSwiZXhwIjoxNzE1ODMxMDg5LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.o5JVlME_O2Ldi6703iE4dZepx1PlF6XjyILunqbfw0M');
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
            'Homepage',
            placeholder: () => const CircularProgressIndicator(),
            errorWidget: (error) => Text(error),
            theme: ThemeMode.light,
            workflows: [Workflow('node_id', Trigger.onTap, () {})],
          ),
        ),
      ),
    );
  }
}
