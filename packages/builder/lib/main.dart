import 'package:flutter/material.dart';
import 'package:theta/src/presentation/ui_box.dart';
import 'package:theta/theta.dart';
import 'package:theta_models/theta_models.dart';

Future<void> main() async {
  await Theta.initialize(
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI2MzRhNGMyZi1lNDQxLTQ1YWMtYTg3Ni0xNGQzZjliODZlYzkiLCJhbm9uX2tleSI6IjRhZDZhNDVlLWU3YWMtNGQzOC05OGVmLThjODVjODE3NzAyMiIsImlhdCI6MTY4NDE2NjAxOCwiZXhwIjoxNzE1NzIzNjE4LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.xWfFrv02t636GMA8XOSOXByqaeYP1_i46Ls9iEVDIA0');
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
