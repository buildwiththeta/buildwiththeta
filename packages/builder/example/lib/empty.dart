// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  await Theta.initialize(
    cacheEnabled: false,
    anonKey: '',
  );

  runApp(
    const ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        title: 'Remote UI',
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UIBox(
        'Button',
        placeholder: const Center(
          child: CupertinoActivityIndicator(),
        ),
        overrides: [
          Override('node id')..setText('Confirm'),
          Override('node id')..setChild(Center(child: Text('Confirm'))),
        ],
      ),
    );
  }
}
