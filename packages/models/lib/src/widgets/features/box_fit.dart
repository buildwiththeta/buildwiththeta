// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';

@immutable
class FBoxFit extends FeatureWithEnum<BoxFit> {
  const FBoxFit({super.value = BoxFit.cover});

  static FBoxFit fromJson(final String json) =>
      FBoxFit(value: EnumToString.fromString(BoxFit.values, json)!);

  @override
  FBoxFit copyWith({
    BoxFit? value,
  }) =>
      FBoxFit(value: value ?? this.value);
}
