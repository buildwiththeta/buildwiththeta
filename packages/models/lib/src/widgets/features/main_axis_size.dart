// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/widgets.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

@dynamicAttributeKey
@AttributeKey(DBKeys.mainAxisSize)
class FMainAxisSize extends FeatureWithEnum<MainAxisSize> {
  const FMainAxisSize({
    super.value = MainAxisSize.max,
  });

  static FMainAxisSize fromJson(final String json) =>
      FMainAxisSize(value: EnumToString.fromString(MainAxisSize.values, json)!);
}
