import 'package:embed/app.dart' deferred as app;
import 'package:embed/error_screen.dart' deferred as error_screen;
import 'package:flutter/material.dart';

void main() {
  try {
    String name = Uri.base.queryParameters["component_name"]!;
    String token = Uri.base.queryParameters["token"]!;
    app
        .loadLibrary()
        .then((value) => runApp(app.MyApp(name: name, token: token)));
  } catch (e) {
    error_screen
        .loadLibrary()
        .then((value) => runApp(error_screen.ErrorScreen()));
  }
}
