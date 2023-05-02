// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

/// [FCrossAxisAlignment] is a set of functions to save use CrossAxisAlignment within Teta
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.crossAxisAlignment)
class FCrossAxisAlignment extends FeatureWithEnum<CrossAxisAlignment> {
  /// Constructor for [FCrossAxisAlignment]
  const FCrossAxisAlignment({
    super.value = CrossAxisAlignment.center,
  });

  static FCrossAxisAlignment fromJson(final String json) => FCrossAxisAlignment(
      value: EnumToString.fromString(CrossAxisAlignment.values, json)!);
}
