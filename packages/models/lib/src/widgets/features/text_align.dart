// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

///
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.textAlign)
class FTextAlign extends FeatureWithEnum<TextAlign> {
  const FTextAlign({
    super.value = TextAlign.left,
  });

  static FTextAlign fromJson(final String json) =>
      FTextAlign(value: EnumToString.fromString(TextAlign.values, json)!);
}
