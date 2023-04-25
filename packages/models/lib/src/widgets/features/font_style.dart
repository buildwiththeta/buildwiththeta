// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.fontStyle)
class FFontStyle extends Equatable {
  /// Set of funcs to use FontStyle in Teta
  const FFontStyle({
    this.style = FontStyle.normal,
  });

  final FontStyle style;

  @override
  List<Object?> get props => [style];

  static FFontStyle fromJson(final String json) {
    if (json == 'n') {
      return const FFontStyle();
    } else {
      return const FFontStyle(style: FontStyle.italic);
    }
  }

  String toJson() => (style == FontStyle.normal) ? 'n' : 'i';

  static String _convertValueToJson(final FontStyle? style) =>
      (style == FontStyle.normal) ? 'FontStyle.normal' : 'FontStyle.italic';

  String toCode() => _convertValueToJson(style);
}
