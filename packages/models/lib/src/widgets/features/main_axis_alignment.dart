// Flutter imports:
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';

/// Class to use MainAxisAlignment in Theta
@immutable
class FMainAxisAlignment extends FeatureWithEnum<MainAxisAlignment> {
  const FMainAxisAlignment({
    super.value = MainAxisAlignment.start,
  });

  static FMainAxisAlignment fromJson(final String json) => FMainAxisAlignment(
      value: EnumToString.fromString(MainAxisAlignment.values, json)!);
}
