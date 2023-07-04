// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  await Theta.initialize(
    cacheEnabled: false,
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiJlNmFkODFiYy1jZDRhLTRkNzktOWM0MC04ODBlYmI2MTFhOTUiLCJhbm9uX2tleSI6ImI5NmM3NWI1LTkzZTEtNGFlZS05YmQ2LWNmMzQ3ZTBiMDVmOCIsImlhdCI6MTY4ODQwMTgwMCwiZXhwIjoxNzE5OTU5NDAwLCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.dToIDA3YP9zD99dOXWfosr9L6wZYxxiNGDfDXCIMyUc',
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
          Override('fd0578d0-15cc-11ee-a3cd-33f0978e6b7c')..setText('Confirm'),
          Override('e844aab0-15cc-11ee-a3cd-33f0978e6b7c')
            ..setChild(Center(child: Text('Confirm'))),
        ],
      ),
    );
  }
}
