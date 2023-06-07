import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:playground/src/presentation/editor/views/editor.dart';
import 'package:theta_design_system/theta_design_system.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Palette.blue,
        iconTheme: IconThemeData(color: lightTheme.txtPrimary),
        extensions: const <ThemeExtension<dynamic>>[
          lightTheme,
        ],
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Palette.blue,
        iconTheme: IconThemeData(color: darkTheme.txtPrimary),
        extensions: const <ThemeExtension<dynamic>>[
          darkTheme,
        ],
      ),
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) => MaterialApp(
        title: 'Theta',
        debugShowCheckedModeBanner: false,
        theme: light,
        darkTheme: dark,
        home: const EditorConnector(),

        /// This is the error widget builder
        builder: (context, widget) {
          final theme = Theme.of(context).extension<ThetaTheme>()!;

          ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
            if (widget is Scaffold || widget is Navigator) {
              return Scaffold(
                backgroundColor: theme.bgPrimary,
                body: TErrorWidget(
                  '${errorDetails.exception}',
                ),
              );
            }
            return TParagraph(
              '${errorDetails.exception}',
              isCentered: true,
            );
          };
          return widget!;
        },
      ),
    );
  }
}
