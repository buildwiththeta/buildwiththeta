// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
// Package imports:
import 'package:styled_divider/styled_divider.dart';

@immutable
class FDividerLineStyle extends FeatureWithEnum<DividerLineStyle> {
  const FDividerLineStyle({
    super.value = DividerLineStyle.solid,
  });

  static FDividerLineStyle fromJson(final String json) => FDividerLineStyle(
      value: EnumToString.fromString(DividerLineStyle.values, json)!);
}
