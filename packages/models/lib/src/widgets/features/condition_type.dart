// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

@immutable
class FConditionType extends FeatureWithEnum<ConditionType> {
  const FConditionType({
    super.value = ConditionType.equal,
  });

  static FConditionType fromJson(final String json) => FConditionType(
      value: EnumToString.fromString(ConditionType.values, json)!);
}
