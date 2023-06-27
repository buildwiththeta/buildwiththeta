import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  /// Initialize Theta instance.
  /// You can get an anonymous key at https://app.buildwiththeta.com
  await Theta.initialize(
    cacheEnabled: false,
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiIzMGY3M2U3ZS0xMTY0LTRlOGQtYjA5Yi05NWZmMDBkYzhmMmIiLCJhbm9uX2tleSI6ImYzYjQ1MTQxLWMxMzItNDk2NC04MzdiLTdhYmYxMjRkMjJhMSIsImlhdCI6MTY4Nzg2MDcxNiwiZXhwIjoxNzE5NDE4MzE2LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.u5s8Zf0IAPN3Tj4_WXjjFNyJeEJNRBtrNsBqAPmvltA',
  );

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
    _controller.onLoaded(() {
      debugPrint('Loaded!');
      final rootNode = _controller.rootNode;
    });
    _controller.onError((error) => debugPrint(error.toString()));
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
    return ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        home: Scaffold(
          /// UIBox is the main widget.
          /// It's used to build the UI.
          /// It requires a component [name].
          body: UIBox(
            'Homepage',

            controller: _controller,

            /// [placeholder] is the widget displayed while the page is loading.
            placeholder: const CircularProgressIndicator(),

            /// [errorWidget] is the widget displayed if an error occurs.
            errorWidget: (error) => Text(error.toString()),

            /// [fit] is how the component should fit the parent.
            /// It can be [ComponentFit.absolute] or [ComponentFit.autoLayout].
            fit: ComponentFit.absolute,

            /// [overrides] are the properties that can be overriden by the user.
            overrides: [
              /// [Override] requires a [node] identifier and a list of [props].
              /// Use one Override per node.
              Override(
                'node id',
              )..setChild(const UIBox('ComponentName')),

              Override(
                'node id',
              )
                ..setText('Click me!')
                ..setColor(Colors.red, 1),

              Override(
                'node id 2',
              )..setChildren([
                  const Text('Click me!'),
                  const Text('Click me!'),
                ]),
            ],

            /// [workflows] are the workflows that can be triggered by the user, mixing no-code and code.
            workflows: [
              Workflow(
                'node id',
                Trigger.onMouseEnter,
                () => debugPrint('Hovered!'),
              ),
              Workflow(
                'node name',
                Trigger.onMouseExit,
                () => debugPrint('Not hovered!'),
              ),
              Workflow(
                'node id',
                Trigger.onTap,
                () => debugPrint('Tapped!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
