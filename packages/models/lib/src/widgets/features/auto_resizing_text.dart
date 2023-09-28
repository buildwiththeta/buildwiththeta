// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';

enum AutoResizingTextType {
  autoWidth,
  autoHeight,
  fixedSize,
}

@immutable
class FAutoResizingText extends FeatureWithEnum<AutoResizingTextType> {
  /// Set of func to use AutoResizingText in Theta
  const FAutoResizingText({
    super.value = AutoResizingTextType.fixedSize,
  });

  static FAutoResizingText fromJson(final String json) => FAutoResizingText(
      value: EnumToString.fromString(AutoResizingTextType.values, json)!);
}
