import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart' as widgets;

import 'main.reflectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  widgets.initializeReflectable();
  initializeReflectable();
}
