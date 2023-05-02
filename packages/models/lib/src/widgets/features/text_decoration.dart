// Flutter imports:
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

///
@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.textDecoration)
class FTextDecoration extends Equatable {
  /// Set of funcs to use TextDecoration within Teta
  const FTextDecoration({
    this.textDecoration = TextDecoration.none,
  });

  final TextDecoration textDecoration;

  @override
  List<Object?> get props => [textDecoration];

  static FTextDecoration fromJson(final String json) {
    try {
      return FTextDecoration(textDecoration: _convertJsonToValue(json));
    } catch (e) {
      return const FTextDecoration();
    }
  }

  String toJson() => _convertValueToJson(textDecoration);

  static TextDecoration _convertJsonToValue(final String key) {
    var decoration = TextDecoration.none;
    if (key == 'n') decoration = TextDecoration.none;
    if (key == 'u') decoration = TextDecoration.underline;
    if (key == 'l') decoration = TextDecoration.lineThrough;
    if (key == 'o') decoration = TextDecoration.overline;
    return decoration;
  }

  static String _convertValueToJson(final TextDecoration value) {
    var decoration = 'n';
    if (value == TextDecoration.none) decoration = 'n';
    if (value == TextDecoration.underline) decoration = 'u';
    if (value == TextDecoration.lineThrough) decoration = 'l';
    if (value == TextDecoration.overline) decoration = 'o';
    return decoration;
  }

  String toCode() => textDecoration.toString();

  /*String toCode() =>
      "FTextDecoration(textDecorations: [${convertValueToCode(textDecorations?[0])},${convertValueToCode(textDecorations?[1])},${convertValueToCode(textDecorations?[2])},],)";*/
}
