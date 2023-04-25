// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/src/widgets/features/index.dart';
import 'package:theta_models/theta_models.dart';

import 'main.reflectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeReflectable();

  final res = const DynamicAttributes().fromJson(DBKeys.align, {
    'm': 'tL',
    't': 'tL',
    'd': 'tL',
  });
  print(res);

  final res2 = const DynamicIntrinsicState().getStateByType(NType.align);
  print(res2.displayName);
}
