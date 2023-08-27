import 'package:flutter/cupertino.dart' show CupertinoActivityIndicator;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        State,
        Widget,
        BuildContext,
        Scaffold,
        Colors,
        ThemeMode,
        Center;
import 'package:theta/theta.dart' deferred as theta;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.name, required this.token});

  final String name;
  final String token;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    theta.loadLibrary().then((value) => theta.Theta.initialize(
                anonKey: widget.token,
                connectionMode: theta.ConnectionMode.continuous,
                componentsNames: [widget.name],
                customURLs: theta.CustomURLs(
                    getComponent:
                        'https://getcomponent.andrea-364.workers.dev/',
                    getStyles: theta.DefaultCustomURLs().getStyles,
                    sendEvents: theta.DefaultCustomURLs().sendEvents))
            .then((value) {
          setState(() {
            isLoaded = true;
          });
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: !isLoaded
          ? const Center(child: CupertinoActivityIndicator())
          : theta.ThetaProvider(
              theme: ThemeMode.light,
              child: theta.UIBox(
                widget.name,
                placeholder: const Center(child: CupertinoActivityIndicator()),
              ),
            ),
    );
  }
}
