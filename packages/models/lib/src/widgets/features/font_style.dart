// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.fontStyle)
class FFontStyle extends FeatureWithEnum<FontStyle> {
  /// Set of funcs to use FontStyle in Teta
  const FFontStyle({
    super.value = FontStyle.normal,
  });

  static FFontStyle fromJson(final String json) =>
      FFontStyle(value: EnumToString.fromString(FontStyle.values, json)!);
}
