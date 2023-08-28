import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        MaterialApp,
        Scaffold,
        Center,
        Text;

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
        child: Text('Something went wrong.'),
      )),
    );
  }
}
