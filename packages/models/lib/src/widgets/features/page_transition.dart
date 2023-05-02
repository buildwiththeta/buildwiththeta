// Flutter imports:
// ignore_for_file: public_member_api_docs, library_prefixes

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';
// Package imports:
import 'package:transition/transition.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.pageTransition)
class FPageTransition extends FeatureWithEnum<TransitionEffect> {
  const FPageTransition({
    super.value = TransitionEffect.RIGHT_TO_LEFT,
  });

  static FPageTransition fromJson(final String json) => FPageTransition(
      value: EnumToString.fromString(TransitionEffect.values, json)!);
}
