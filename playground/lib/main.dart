import 'package:flutter/material.dart';
import 'package:playground/app.dart';
import 'package:playground/src/dependency_injection/di.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart'
    hide initializeReflectable;

import 'main.reflectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThetaModels.initialize();
  await ThetaOpenWidgets.initialize();
  initializeReflectable();
  await initializeDependencyInjection();
  runApp(const Playground());
}
