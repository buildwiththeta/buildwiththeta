// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.borderStyle)
class FBorderStyle extends FeatureWithEnum<BorderStyle> {
  const FBorderStyle({
    super.value = BorderStyle.solid,
  });

  static FBorderStyle fromJson(final String json) =>
      FBorderStyle(value: EnumToString.fromString(BorderStyle.values, json)!);
}
