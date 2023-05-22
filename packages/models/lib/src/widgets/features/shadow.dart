// Project imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.shadows)
class FShadow extends Equatable {
  /// Set of funcs to use Shadow property in Teta
  const FShadow({
    required this.x,
    required this.y,
    required this.spread,
    required this.blur,
    required this.fill,
    required this.opacity,
  });

  final FTextTypeInput x, y;
  final FTextTypeInput spread, blur;
  final FFill fill;
  final FSize opacity;

  @override
  List<Object?> get props => [
        x,
        y,
        spread,
        blur,
        fill,
        opacity,
      ];

  BoxShadow get(BuildContext context, ColorStyles colors, ThemeMode theme) =>
      BoxShadow(
        color: HexColor(fill.getHexColor(context, colors, theme))
            .withOpacity(double.parse(opacity.size)),
        blurRadius: double.parse(blur.value ?? '0'),
        offset: Offset(
          double.parse(x.value ?? '0'),
          double.parse(y.value ?? '0'),
        ),
      );

  FShadow copyWith({
    FTextTypeInput? x,
    FTextTypeInput? y,
    FTextTypeInput? spread,
    FTextTypeInput? blur,
    FFill? fill,
    FSize? opacity,
  }) =>
      FShadow(
        x: x ?? this.x,
        y: y ?? this.y,
        spread: spread ?? this.spread,
        blur: blur ?? this.blur,
        fill: fill ?? this.fill,
        opacity: opacity ?? this.opacity,
      );

  FShadow ready() => const FShadow(
        x: FTextTypeInput(value: '0'),
        y: FTextTypeInput(value: '0'),
        spread: FTextTypeInput(value: '0'),
        blur: FTextTypeInput(value: '16'),
        fill: FFill(
          levels: [
            FFillElement(
              color: '000000',
              stop: 0,
            )
          ],
        ),
        opacity: FSize(size: '0', sizeTablet: '0', sizeDesktop: '0'),
      );

  static FShadow fromJson(final Map<String, dynamic> json) {
    try {
      return FShadow(
        x: FTextTypeInput.fromJson(json['x'] as Map<String, dynamic>?),
        y: FTextTypeInput.fromJson(json['y'] as Map<String, dynamic>?),
        spread: FTextTypeInput.fromJson(json['s'] as Map<String, dynamic>?),
        blur: FTextTypeInput.fromJson(json['b'] as Map<String, dynamic>?),
        fill: FFill.fromJson(json['f'] as Map<String, dynamic>),
        opacity: FSize.fromJson(json['o'] as Map<String, dynamic>),
      );
    } catch (e) {
      return const FShadow(
        x: FTextTypeInput(value: '0'),
        y: FTextTypeInput(value: '0'),
        spread: FTextTypeInput(value: '0'),
        blur: FTextTypeInput(value: '16'),
        fill: FFill(),
        opacity: FSize(
          size: '0',
          sizeTablet: '0',
          sizeDesktop: '0',
        ),
      );
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'x': x.toJson(),
        'y': y.toJson(),
        's': spread.toJson(),
        'b': blur.toJson(),
        'f': fill.toJson(),
        'o': opacity.toJson(),
      }..removeWhere((final String key, final dynamic value) => value == null);
}
