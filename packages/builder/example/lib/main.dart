import 'package:flutter/material.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  /// Initialize Theta instance.
  /// You can get an anonymous key at https://app.buildwiththeta.com
  await Theta.initialize(
    cacheEnabled: false,
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiJhN2M4OThlOS1iOTVkLTRiOWItOTE1ZS03NWZhZDMzMDVkNmMiLCJhbm9uX2tleSI6IjJlMTliZTUwLTVhNTktNDRiMC05MWM2LTA2NzU1ZjQ4OTYzOCIsImlhdCI6MTY4NjA0MzkwMCwiZXhwIjoxNzE3NjAxNTAwLCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.CnGZnciBO79tHXTkdapCxExU1r1S-xOPFN2JMOK4iMU',
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
