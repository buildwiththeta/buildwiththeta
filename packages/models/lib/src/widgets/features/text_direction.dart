// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';

@immutable
class FTextDirection extends FeatureWithEnum<TextDirection> {
  const FTextDirection({
    super.value = TextDirection.ltr,
  });

  static FTextDirection fromJson(final String json) => FTextDirection(
      value: EnumToString.fromString(TextDirection.values, json)!);
}
