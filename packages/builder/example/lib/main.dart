import 'package:example/theta_ui_widgets.g.dart';
import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

final date = DateTime.now();

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
  final _controller = UIBoxController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      _controller.changeTheme(ThemeMode.dark);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// ThetaProvider is used to provide the project styles to the widgets.
    /// It's required to use Theta widgets.
    return MaterialApp(
      home: Scaffold(
        /// UIBox is the main widget.
        /// It's used to build the UI.
        /// It requires a component [name].
        body: PaywallTeamWidget(
          initialTheme: ThemeMode.light,
          controller: _controller,
          isLive: false,
        ),
      ),
    );
  }
}
