// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_open_widgets/src/main.reflectable.dart';

Future<void> main() async {
  await ThetaOpenWidgets.initialize();

  final json = jsonDecode(
    jsonEncode(
      <String, dynamic>{
        '_id': 1442390,
        'ids': [1442396],
        'body': {
          'wdh': {'s': 375, 'u': 'i', 't': 375, 'd': 375, 'ut': 'i', 'ud': 'i'},
          'hgh': {'s': 812, 'u': 'i', 't': 812, 'd': 812, 'ut': 'i', 'ud': 'i'},
          'fill': {
            'l': [
              {'color': '000000', 'stop': 0, 'opacity': 0}
            ],
            't': 's',
            'r': 0,
            'bF': 'cv'
          },
          'a': {'acts': []},
          'shAB': false,
          'shBB': false,
          'shDW': false,
          'f': true,
          'isBox': false,
          'p': {
            'm': [0, 0, 0, 0],
            't': [0, 0, 0, 0],
            'd': [0, 0, 0, 0]
          }
        },
        'type': 'scaffold',
        'page_id': 45448,
        'created_at': '2022-11-08T12:58:42.213Z',
        'updated_at': '2023-03-22T15:11:31.312Z',
        '__v': 0,
      },
    ),
  );

  /// Get the adapter (toWidget method)
  const WidgetAdapterParse().getByType(NType.scaffold);

  /// Get the default attributes

  const DefaultAttributesParse().getByType(NType.scaffold);

  /// Get the intrinsic state

  const DynamicIntrinsicState().getStateByType(NType.scaffold);

  /// Get the node
  const NodesParse().fromJson(
    json['type'],
    json,
  );
}
