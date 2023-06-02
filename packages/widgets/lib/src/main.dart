// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

Future<void> main() async {
  await ThetaModels.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  initializeReflectable();

  final json = jsonDecode(
    jsonEncode(
      <String, dynamic>{
        '_id': 0,
        'ids': [],
        'body': {},
        'type': NType.text,
      },
    ),
  );

  /// Get the adapter (toWidget method)
  const WidgetAdapterParse().getByType(NType.text);

  /// Get the default attributes

  const DefaultAttributesParse().getByType(NType.text);

  /// Get the intrinsic state

  const DynamicIntrinsicState().getStateByType(NType.text);

  /// Get the node
  const NodesParse().fromJson(
    NType.text,
    json,
  );
}
