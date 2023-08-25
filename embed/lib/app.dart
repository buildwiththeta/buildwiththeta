import 'package:embed/home.dart' deferred as home;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.name,
    required this.token,
  });

  final String name;
  final String token;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget child = const Center(child: CupertinoActivityIndicator());

  @override
  void initState() {
    super.initState();
    home.loadLibrary().then((value) => setState(() => child = home.MyHomePage(
          name: widget.name,
          token: widget.token,
        )));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: false,
      ),
      home: child,
    );
  }
}
