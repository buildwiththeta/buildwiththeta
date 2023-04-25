// Flutter imports:
// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:enum_to_string/enum_to_string.dart';
import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

const nameAttr = 'BlendMode';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.blendMode)
class FBlendMode extends Equatable {
  const FBlendMode({
    this.mode = BlendMode.clear,
  });

  final BlendMode mode;

  static List<String> get dropdownList => BlendMode.values
      .map(
        (final element) => EnumToString.convertToString(
          element,
          camelCase: true,
        ),
      )
      .toList();

  @override
  List<Object?> get props => [mode];

  String getStringForDropDown(final BuildContext context) {
    return convertValueToDropDown(mode);
  }

  static FBlendMode fromJson(final String json) {
    try {
      return FBlendMode(
        mode: convertJsonToValue(json),
      );
    } catch (e) {
      return const FBlendMode();
    }
  }

  String toJson() {
    return convertValueToJson(mode);
  }

  FBlendMode clone() => FBlendMode(mode: mode);

  FBlendMode copyWith({final BlendMode? mode}) =>
      FBlendMode(mode: mode ?? this.mode);

  static BlendMode convertJsonToValue(final String key) {
    return EnumToString.fromString(
          BlendMode.values,
          key,
        ) ??
        BlendMode.clear;
  }

  static BlendMode convertDropDownToValue(final String key) =>
      EnumToString.fromString(BlendMode.values, key, camelCase: true) ??
      BlendMode.clear;

  static String convertValueToDropDown(final BlendMode key) =>
      EnumToString.convertToString(key, camelCase: true);

  static String convertValueToJson(final BlendMode value) =>
      EnumToString.convertToString(value);

  static String convertValueToCode(final BlendMode? value) =>
      EnumToString.convertToString(value);

  String toCode() => 'FBlendMode(mode: BlendMode.${convertValueToCode(mode)})';
}

/// questo toCode printa BlendMode.qualche valore di BlendMode
/// Ma a noi serve in quest'altro modo: FBlendMode(mode: BlendMode.${convertValueToCode(mode)})
