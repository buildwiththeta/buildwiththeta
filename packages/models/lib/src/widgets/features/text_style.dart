// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:recase/recase.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';

@dynamicAttributeKey
@AttributeKey(DBKeys.textStyle)
@AttributeKey(DBKeys.textStyle2)
class FTextStyle extends Equatable {
  /// Set of funcs to use TextStyle in Teta's widgets
  const FTextStyle({
    this.fill = const FFill(
      type: FFillType.solid,
      levels: [
        FFillElement(color: 'ffffff', stop: 0),
      ],
    ),
    this.fontSize = const FFontSize(),
    this.fontFamily = 'Poppins',
    this.fontWeight = const FFontWeight(),
    this.textDecoration = const FTextDecoration(),
    this.textAlign = const FTextAlign(),
    this.fontStyle = const FFontStyle(),
    this.textStyleModel,
    this.textDirection = const FTextDirection(),
  });

  final FFill fill;
  final FFontSize fontSize;
  final String fontFamily;
  final FFontWeight fontWeight;
  final FTextDecoration textDecoration;
  final FTextAlign textAlign;
  final FFontStyle fontStyle;
  final String? textStyleModel;
  final FTextDirection textDirection;

  @override
  List<Object?> get props => [
        fill,
        fontSize,
        fontFamily,
        fontWeight,
        textDecoration,
        textAlign,
        fontStyle,
        textStyleModel,
        textDirection,
      ];

  TextStyle get(
    final TreeState state,
    final BuildContext context,
    final bool forPlay,
    final TextStyleEntity? model,
  ) {
    return TetaTextStyles.get(
      state: state,
      context: context,
      model: model,
      forPlay: forPlay,
      fill: fill,
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      textDecoration: textDecoration,
      fontStyle: fontStyle,
    );
  }

  static FTextStyle fromJson(final Map<String, dynamic> doc) {
    return FTextStyle(
      fill: doc[DBKeys.fill] != null
          ? FFill.fromJson(doc[DBKeys.fill] as Map<String, dynamic>)
          : const FFill(
              type: FFillType.solid,
              levels: [FFillElement(color: '000000', stop: 0)],
            ),
      fontSize: doc[DBKeys.fontSize] != null
          ? FFontSize.fromJson(doc[DBKeys.fontSize])
          : const FFontSize(),
      fontFamily: doc[DBKeys.fontFamily] as String? ??
          doc['family'] as String? ??
          'Poppins',
      fontWeight: doc[DBKeys.fontWeight] != null
          ? FFontWeight.fromJson(doc[DBKeys.fontWeight])
          : const FFontWeight(),
      textDecoration: doc[DBKeys.textDecoration] != null
          ? FTextDecoration.fromJson(doc[DBKeys.textDecoration] as String)
          : const FTextDecoration(),
      textAlign: doc[DBKeys.textAlign] != null
          ? FTextAlign.fromJson(doc[DBKeys.textAlign] as String)
          : const FTextAlign(),
      fontStyle: doc[DBKeys.fontStyle] != null
          ? FFontStyle.fromJson(doc[DBKeys.fontStyle])
          : const FFontStyle(),
      textDirection: doc[DBKeys.textDirection] != null
          ? FTextDirection.fromJson(doc[DBKeys.textDirection] as String)
          : const FTextDirection(),
      textStyleModel: doc[DBKeys.textStyleModel] as String?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        DBKeys.fill: fill.toJson(),
        DBKeys.fontSize: fontSize.toJson(),
        DBKeys.fontFamily: fontFamily,
        DBKeys.fontWeight: fontWeight.toJson(),
        DBKeys.textDecoration: textDecoration.toJson(),
        DBKeys.textAlign: textAlign.toJson(),
        DBKeys.fontStyle: fontStyle.toJson(),
        DBKeys.textDirection: textDirection.toJson(),
        DBKeys.textStyleModel: textStyleModel,
      };

  /// Returns style (TextStyle) and textAlign (TextAlign) property
  /// ```dart
  /// style: TextStyle(
  ///   color: Colors.black,
  ///   fontWeight: FontWeight.normal,
  ///   fontSize: 16,
  ///   fontFamily: '',
  ///   fontStyle: FontStyle.normal,
  ///   decoration: TextDecoration.none,
  /// ),
  /// textAlign: TextAlign.center,
  /// ```
  String toCode(final BuildContext context, TextStyles textStyles,
      ColorStyles colorStyles) {
    TextStyleEntity? model;
    if (textStyleModel != null) {
      for (var element in textStyles) {
        if (element.name == textStyleModel) model = element;
      }
    }

    final rc = ReCase(model?.fontFamily ?? fontFamily);
    final align = textAlign.toCode();
    final size = (model?.fontSize ?? fontSize).toCode();
    final weight = (model?.fontWeight ?? fontWeight).toCode();
    final style = fontStyle.toCode();
    final decoration = textDecoration.toCode();
    final direction = textDirection.toCode();

    return '''
    style: GoogleFonts.${rc.camelCase}(
      textStyle: TextStyle(
        ${FFill.toCode(fill, context, colorStyles: colorStyles)}
        fontWeight: $weight,
        fontSize: $size,
        fontStyle: $style,
        decoration: $decoration,
      ),
    ),
    textAlign: $align,
    textDirection: $direction,
    ''';
  }

  /// Returns style (TextStyle) only
  /// ```dart
  /// TextStyle(
  ///   color: Colors.black,
  ///   fontWeight: FontWeight.normal,
  ///   fontSize: 16,
  ///   fontFamily: '',
  ///   fontStyle: FontStyle.normal,
  ///   decoration: TextDecoration.none,
  /// ),

  String toCodeTextStyleOnly(
      BuildContext context, TextStyles textStyles, ColorStyles colorStyles) {
    TextStyleEntity? model;
    if (textStyleModel != null) {
      for (var element in textStyles) {
        if (element.name == textStyleModel) model = element;
      }
    }

    final rc = ReCase(model?.fontFamily ?? fontFamily);
    final size = (model?.fontSize ?? fontSize).toCode();
    final weight = (model?.fontWeight ?? fontWeight).toCode();
    final style = fontStyle.toCode();
    final decoration = textDecoration.toCode();

    return '''
    style: GoogleFonts.${rc.camelCase}(
      textStyle: TextStyle(
        ${FFill.toCode(
      fill,
      context,
      colorStyles: colorStyles,
    )}
        fontWeight: $weight,
        fontSize: $size,
        fontStyle: $style,
        decoration: $decoration,
      ),
    ),
    ''';
  }

  FTextStyle copyWith({
    FFill? fill,
    FFontSize? fontSize,
    String? fontFamily,
    FFontWeight? fontWeight,
    FTextDecoration? textDecoration,
    FTextAlign? textAlign,
    FFontStyle? fontStyle,
    FTextDirection? textDirection,
    String? textStyleModel,
  }) {
    return FTextStyle(
      fill: fill ?? this.fill,
      fontSize: fontSize ?? this.fontSize,
      fontFamily: fontFamily ?? this.fontFamily,
      fontWeight: fontWeight ?? this.fontWeight,
      textDecoration: textDecoration ?? this.textDecoration,
      textAlign: textAlign ?? this.textAlign,
      fontStyle: fontStyle ?? this.fontStyle,
      textDirection: textDirection ?? this.textDirection,
      textStyleModel: textStyleModel ?? this.textStyleModel,
    );
  }
}

Widget example() {
  return const Text(
    '',
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      fontFamily: '',
      fontStyle: FontStyle.normal,
      decoration: TextDecoration.none,
    ),
    textAlign: TextAlign.center,
  );
}
