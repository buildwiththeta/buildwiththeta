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

  final FFill? fill;
  final FFontSize? fontSize;
  final String? fontFamily;
  final FFontWeight? fontWeight;
  final FTextDecoration? textDecoration;
  final FTextAlign? textAlign;
  final FFontStyle? fontStyle;
  final String? textStyleModel;
  final FTextDirection? textDirection;

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
    final TextStyleModel? model,
  ) {
    return TetaTextStyles.get(
      state: state,
      context: context,
      model: model,
      forPlay: forPlay,
      fill: fill ??
          const FFill(
            type: FFillType.solid,
            levels: [FFillElement(color: '000000', stop: 0)],
          ),
      fontFamily: fontFamily ?? 'Poppins',
      fontSize: fontSize ?? const FFontSize(),
      fontWeight: fontWeight ?? const FFontWeight(),
      textDecoration: textDecoration ?? const FTextDecoration(),
      fontStyle: fontStyle ?? const FFontStyle(),
    );
  }

  static FTextStyle fromJson(final Map<String, dynamic> doc) {
    try {
      return FTextStyle(
        fill: doc[DBKeys.fill] ?? doc['fill'] != null
            ? FFill.fromJson(
                (doc[DBKeys.fill] ?? doc['fill']) as Map<String, dynamic>)
            : const FFill(
                type: FFillType.solid,
                levels: [FFillElement(color: '000000', stop: 0)],
              ),
        fontSize: doc[DBKeys.fontSize] ?? doc['size'] != null
            ? FFontSize.fromJson(doc[DBKeys.fontSize] ?? doc['size'])
            : const FFontSize(),
        fontFamily: doc[DBKeys.fontFamily] as String? ??
            doc['family'] as String? ??
            'Poppins',
        fontWeight: doc[DBKeys.fontWeight] ?? doc['weight'] != null
            ? FFontWeight.fromJson(
                doc[DBKeys.fontWeight] as String? ?? doc['weight'] as String)
            : const FFontWeight(),
        textDecoration: doc[DBKeys.textDecoration] != null
            ? FTextDecoration.fromJson(doc[DBKeys.textDecoration] as String)
            : const FTextDecoration(),
        textAlign: doc[DBKeys.textAlign] != null
            ? FTextAlign.fromJson(doc[DBKeys.textAlign] as String)
            : const FTextAlign(),
        fontStyle: doc[DBKeys.fontStyle] != null
            ? FFontStyle.fromJson(doc[DBKeys.fontStyle] as String)
            : const FFontStyle(),
        textDirection: doc[DBKeys.textDirection] != null
            ? FTextDirection.fromJson(doc[DBKeys.textDirection] as String)
            : const FTextDirection(),
        textStyleModel: doc[DBKeys.textStyleModel] as String?,
      );
    } catch (e) {
      return const FTextStyle(
        fill: FFill(
          type: FFillType.solid,
          levels: [FFillElement(color: '000000', stop: 0)],
        ),
        fontSize: FFontSize(),
        fontFamily: 'Poppins',
        fontWeight: FFontWeight(),
        textDecoration: FTextDecoration(),
        textAlign: FTextAlign(),
        fontStyle: FFontStyle(),
        textDirection: FTextDirection(),
      );
    }
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        DBKeys.fill: (fill != null)
            ? fill!.toJson()
            : const FFill(
                type: FFillType.solid,
                levels: [FFillElement(color: '000000', stop: 0)],
              ).toJson(),
        DBKeys.fontSize: (fontSize != null)
            ? fontSize!.toJson()
            : const FFontSize().toJson(),
        DBKeys.fontFamily: fontFamily ?? 'Poppins',
        DBKeys.fontWeight: (fontWeight != null)
            ? fontWeight!.toJson()
            : const FFontWeight().toJson(),
        DBKeys.textDecoration: (textDecoration != null)
            ? textDecoration!.toJson()
            : const FTextDecoration().toJson(),
        DBKeys.textAlign: (textAlign != null)
            ? textAlign!.toJson()
            : const FTextAlign().toJson(),
        DBKeys.fontStyle: (fontStyle != null)
            ? fontStyle!.toJson()
            : const FFontStyle().toJson(),
        DBKeys.textDirection: (textDirection != null)
            ? textDirection!.toJson()
            : const FTextDirection().toJson(),
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
  String toCode(final BuildContext context, List<TextStyleModel> textStyles,
      List<ColorStyleModel> colorStyles) {
    TextStyleModel? model;
    if (textStyleModel != null) {
      for (var element in textStyles) {
        if (element.name == textStyleModel) model = element;
      }
    }

    final rc = ReCase((model?.fontFamily ?? fontFamily) ?? 'Poppins');

    final align = textAlign?.toCode();
    final size = (model?.fontSize ?? fontSize)?.toCode();
    final weight = (model?.fontWeight ?? fontWeight)?.toCode();
    final style = fontStyle?.toCode();
    final decoration = textDecoration?.toCode();
    final direction = textDirection?.toCode();

    return '''
    style: GoogleFonts.${rc.camelCase}(
      textStyle: TextStyle(
        ${FFill.toCode(fill!, context, colorStyles: colorStyles)}
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
      final BuildContext context,
      final List<TextStyleModel> textStyles,
      List<ColorStyleModel> colorStyles) {
    TextStyleModel? model;
    if (textStyleModel != null) {
      for (var element in textStyles) {
        if (element.name == textStyleModel) model = element;
      }
    }

    final rc = ReCase((model?.fontFamily ?? fontFamily) ?? 'Poppins');

    final align = textAlign?.toCode();
    final size = (model?.fontSize ?? fontSize)?.toCode();
    final weight = (model?.fontWeight ?? fontWeight)?.toCode();
    final style = fontStyle?.toCode();
    final decoration = textDecoration?.toCode();
    final direction = textDirection?.toCode();

    return '''
    style: GoogleFonts.${rc.camelCase}(
      textStyle: TextStyle(
        ${FFill.toCode(
      fill!,
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
