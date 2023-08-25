// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:enum_to_string/enum_to_string.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/models/feature.dart';
import 'package:theta_models/theta_models.dart';

enum ImageType {
  network,
  asset,
}

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.imageType)
class FImageType extends FeatureWithEnum<ImageType> {
  /// Set of funcs to use FImageType in Theta
  const FImageType({
    super.value = ImageType.network,
  });

  static FImageType fromJson(final String json) =>
      FImageType(value: EnumToString.fromString(ImageType.values, json)!);
}
