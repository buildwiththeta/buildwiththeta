import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  /// Initialize Theta instance.
  /// You can get an anonymous key at https://app.buildwiththeta.com
  await Theta.initialize(
    cacheEnabled: false,
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI3MjE4ZTIxOC00MmQ5LTQyZTgtYmE1My04MGM2ZTkyN2FiNmMiLCJhbm9uX2tleSI6ImY5M2UzN2U4LTA1ZGEtNDlhMy1hOWRmLThmZTkzODQ5MTQxZSIsImlhdCI6MTY4NTk1NTgzNywiZXhwIjoxNzE3NTEzNDM3LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.wR09By0qyK2AdHQG9h-CcRDfz0mzjFBxpbP3lIs9fIY',
  );

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
    /// ThetaProvider is used to provide the project styles to the widgets.
    /// It's required to use Theta widgets.
    return ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        home: Scaffold(
          /// UIBox is the main widget.
          /// It's used to build the UI.
          /// It requires a page [name].
          body: UIBox(
            'Homepage',

            /// [placeholder] is the widget displayed while the page is loading.
            placeholder: () => const CircularProgressIndicator(),

            /// [errorWidget] is the widget displayed if an error occurs.
            errorWidget: (error) => Text(error),

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
