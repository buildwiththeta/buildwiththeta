// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
// Project imports:
import 'package:theta_models/theta_models.dart';

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
    this.letterSpacing = const FTextTypeInput(),
    this.lineSpacing = const FTextTypeInput(),
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
  final FTextTypeInput letterSpacing;
  final FTextTypeInput lineSpacing;

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
        letterSpacing,
        lineSpacing,
      ];

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
      letterSpacing: doc[DBKeys.letterSpacing] != null
          ? FTextTypeInput.fromJson(doc[DBKeys.letterSpacing])
          : const FTextTypeInput(),
      lineSpacing: doc[DBKeys.lineSpacing] != null
          ? FTextTypeInput.fromJson(doc[DBKeys.lineSpacing])
          : const FTextTypeInput(),
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
        DBKeys.letterSpacing: letterSpacing.toJson(),
        DBKeys.lineSpacing: lineSpacing.toJson(),
      };

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
    FTextTypeInput? letterSpacing,
    FTextTypeInput? lineSpacing,
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
      letterSpacing: letterSpacing ?? this.letterSpacing,
      lineSpacing: lineSpacing ?? this.lineSpacing,
    );
  }

  FTextStyle setModelNull() {
    return FTextStyle(
      fill: fill,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      textDecoration: textDecoration,
      textAlign: textAlign,
      fontStyle: fontStyle,
      textDirection: textDirection,
      textStyleModel: null,
      letterSpacing: letterSpacing,
      lineSpacing: lineSpacing,
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
      letterSpacing: 1,
      height: 1,
    ),
    textAlign: TextAlign.center,
  );
}
