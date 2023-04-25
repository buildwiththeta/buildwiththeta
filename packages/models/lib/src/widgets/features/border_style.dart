// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// [FBorderStyle] is a set of functions to use [BorderStyle] in widgets in Teta
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.borderStyle)
class FBorderStyle extends Equatable {
  /// Constructor
  const FBorderStyle({
    required this.style,
  });

  /// Value of [FBorderStyle], optional [BorderStyle]
  final BorderStyle style;

  @override
  List<Object?> get props => [style];

  /// Convert actual [style] to String
  String getString(final BuildContext context) {
    return _convertValueToDropDown(style);
  }

  /// Instantiate [FBorderStyle] from Json
  static FBorderStyle fromJson(final String json) {
    try {
      return FBorderStyle(
        style: _convertJsonToValue(json),
      );
    } catch (e) {
      return const FBorderStyle(style: BorderStyle.solid);
    }
  }

  /// Convert [FBorderStyle] to Json
  String toJson() {
    return _convertValueToJson(style);
  }

  static BorderStyle _convertJsonToValue(final String key) {
    if (key == 'n') return BorderStyle.none;
    return BorderStyle.solid;
  }

  static String _convertValueToJson(final BorderStyle value) {
    if (value == BorderStyle.none) return 'n';
    return 's';
  }

  static String _convertValueToDropDown(final BorderStyle value) {
    if (value == BorderStyle.none) return 'None';
    return 'Solid';
  }

  static String _convertValueToCode(final BorderStyle? value) {
    if (value == BorderStyle.none) return 'BorderStyle.none';
    return 'BorderStyle.solid';
  }

  /// Convert [FBorderStyle] to code String
  String toCode() => _convertValueToCode(style);
}
