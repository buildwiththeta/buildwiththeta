// Package imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Package imports:

import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.textDirection)
class FTextDirection extends Equatable {
  /// Set of funcs to use TextDirection within Teta
  const FTextDirection({
    this.dir = TextDirection.ltr,
  });

  final TextDirection dir;

  @override
  List<Object?> get props => [dir];

  String get getStringForDropDown => _convertValueToDropDown(dir);

  static FTextDirection fromJson(final String? json) {
    if (json != null) {
      return FTextDirection(
        dir: _convertJsonToValue(json),
      );
    } else {
      return const FTextDirection();
    }
  }

  String toJson() => _convertValueToJson(dir);

  static TextDirection _convertJsonToValue(final String key) {
    if (key == 'r') return TextDirection.rtl;
    return TextDirection.ltr;
  }

  static TextDirection _convertDropDownToValue(final String key) {
    if (key == 'Right to Left') return TextDirection.rtl;
    return TextDirection.ltr;
  }

  static String _convertValueToDropDown(final TextDirection key) {
    if (key == TextDirection.rtl) return 'Right to Left';
    return 'Left to Right';
  }

  static String _convertValueToJson(final TextDirection value) {
    if (value == TextDirection.rtl) return 'r';
    return 'l';
  }

  static String _convertValueToCode(final TextDirection? value) {
    if (value == TextDirection.rtl) return 'TextDirection.rtl';
    return 'TextDirection.ltr';
  }

  String toCode() => _convertValueToCode(dir);
}
