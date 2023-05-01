// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';

@immutable
class FClip extends FeatureWithEnum<Clip> {
  const FClip({
    super.value = Clip.hardEdge,
  });

  static FClip fromJson(final String json) =>
      FClip(value: EnumToString.fromString(Clip.values, json)!);
}
