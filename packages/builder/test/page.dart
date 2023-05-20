import 'package:flutter/material.dart';
import 'package:theta/src/presentation/theta_provider.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  await Theta.initialize(
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI4NGJjNDE3Yi1kMTRjLTQwODQtYjE5MC0yY2RkNDgxMWU4ZWIiLCJhbm9uX2tleSI6IjRhZDZhNDVlLWU3YWMtNGQzOC05OGVmLThjODVjODE3NzAyMiIsImlhdCI6MTY4NDMzODgzMywiZXhwIjoxNzE1ODk2NDMzLCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.I_tD_V4YG0Nzn-q7NC3cbKu5LasUXsKfQGJyx4Zt75M');
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
      home: ThetaProvider(
        theme: ThemeMode.light,
        child: Scaffold(
          body: UIBox(
            'Homepage',
            placeholder: () => const CircularProgressIndicator(),
            errorWidget: (error) => Text(error),
          ),
        ),
      ),
    );
  }
}
