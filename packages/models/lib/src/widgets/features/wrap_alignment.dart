// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';

class FWrapAlignment extends FeatureWithEnum<WrapAlignment> {
  const FWrapAlignment({
    super.value = WrapAlignment.start,
  });

  static FWrapAlignment fromJson(final String json) => FWrapAlignment(
      value: EnumToString.fromString(WrapAlignment.values, json)!);
}
