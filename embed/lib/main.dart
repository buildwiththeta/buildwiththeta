import 'dart:js' as js;

import 'package:embed/app.dart' deferred as app;
import 'package:embed/error_screen.dart' deferred as error;
import 'package:flutter/material.dart' show runApp;

Future<void> main() async {
  try {
    final map = js.context.callMethod('getParams');
    String name = map["name"]!;
    String token = map["token"]!;
    app.loadLibrary().then((_) {
      runApp(app.MyApp(name: name, token: token));
    });
  } catch (e) {
    print(e);
    error.loadLibrary().then((_) {
      runApp(error.ErrorScreen());
    });
  }
}
