// Flutter imports:
// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

const nameAttr = 'BlendMode';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.blendMode)
class FBlendMode extends FeatureWithEnum<BlendMode> {
  const FBlendMode({
    super.value = BlendMode.clear,
  });

  static FBlendMode fromJson(final String json) =>
      FBlendMode(value: EnumToString.fromString(BlendMode.values, json)!);
}
