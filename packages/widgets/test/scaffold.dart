// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

Future<void> main() async {
  await ThetaOpenWidgets.initialize();

  final json = jsonDecode(
    jsonEncode(
      {
        '_id': 1442390,
        'ids': [1442396],
        'body': {},
        'type': 'scaffold',
        'page_id': 45448,
        'created_at': '2022-11-08T12:58:42.213Z',
        'updated_at': '2023-03-22T15:11:31.312Z',
        '__v': 0,
      },
    ),
  );

  /// Get the adapter (toWidget method)
  final widgetAdapter = const WidgetAdapterParse().getByType(NType.scaffold);

  Logger.printWarning('widget adaptor: $widgetAdapter');

  /// Get the default attributes

  final defaultAttribute =
      const DefaultAttributesParse().getByType(NType.scaffold);

  Logger.printWarning('default attribute: $defaultAttribute');

  /// Get the intrinsic state

  final intrinsicState =
      const DynamicIntrinsicState().getStateByType(NType.scaffold);

  Logger.printWarning('intrinsic state: $intrinsicState');

  /// Get the node
  final node = const NodesParse().fromJson(
    json['type'],
    json,
  );

  Logger.printWarning('node: $node');
}
