// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

///
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.textAlign)
class FTextAlign extends Equatable {
  /// Set of funcs to use TextAlign to Teta
  const FTextAlign({
    this.align = TextAlign.left,
  });

  final TextAlign align;

  @override
  List<Object?> get props => [align];

  static FTextAlign fromJson(final String? json) {
    if (json != null) {
      return FTextAlign(
        align: _convertJsonToValue(json),
      );
    } else {
      return const FTextAlign();
    }
  }

  String toJson() => _convertValueToJson(align);

  static TextAlign _convertJsonToValue(final String key) {
    if (key == 'c') return TextAlign.center;
    if (key == 'r') return TextAlign.right;
    return TextAlign.left;
  }

  static String _convertValueToJson(final TextAlign value) {
    if (value == TextAlign.center) return 'c';
    if (value == TextAlign.right) return 'r';
    return 'l';
  }

  static String _convertValueToCode(final TextAlign? value) {
    var result = 'TextAlign.left';
    if (value == TextAlign.center) result = 'TextAlign.center';
    if (value == TextAlign.right) result = 'TextAlign.right';
    return result;
  }

  String toCode() => _convertValueToCode(align);

  /*String toCode() =>
      "FTextAlign(textAligns: [${convertValueToCode(textAligns?[0])},${convertValueToCode(textAligns?[1])},${convertValueToCode(textAligns?[2])},],)";*/
}
