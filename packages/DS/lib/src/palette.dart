// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';

class Palette {
  /// Brand gradient colors
  static const blue = Color(0xFF0A84FF);
  static const purple = Color(0xFF9A55FE);
  static const magenta = Color(0xFFFF5BB1);
  static const yellow = Color(0xFFFFBF2F);
  static const green = Color(0xFF22D3B6);
}

@immutable
class ThetaTheme extends ThemeExtension<ThetaTheme> {
  const ThetaTheme({
    required this.bgPrimary,
    required this.bgPrimary60,
    required this.bgPrimary30,
    required this.bgSecondary,
    required this.bgTertiary,
    required this.bgGrey,
    required this.bgGreyLight,
    required this.txtPrimary,
    required this.txtPrimary60,
    required this.txtPrimary30,
    required this.txtSecondary,
    required this.txtTertiary,
    required this.txtGrey,
    required this.buttonColor,
    required this.redError,
    required this.titleTextStyle,
    required this.h1TextStyle,
    required this.h2TextStyle,
    required this.h3TextStyle,
    required this.paragraphTextStyle,
    required this.boldParagraphTextStyle,
    required this.detailsTextStyle,
  });

  final Color bgPrimary;
  final Color bgPrimary60;
  final Color bgPrimary30;
  final Color bgSecondary;
  final Color bgTertiary;
  final Color bgGrey;
  final Color bgGreyLight;

  final Color txtPrimary;
  final Color txtPrimary60;
  final Color txtPrimary30;
  final Color txtSecondary;
  final Color txtTertiary;
  final Color txtGrey;

  final Color buttonColor;
  final Color redError;

  final TextStyle titleTextStyle;
  final TextStyle h1TextStyle;
  final TextStyle h2TextStyle;
  final TextStyle h3TextStyle;
  final TextStyle paragraphTextStyle;
  final TextStyle boldParagraphTextStyle;
  final TextStyle detailsTextStyle;

  @override
  ThetaTheme copyWith({
    Color? bgPrimary,
    Color? bgPrimary60,
    Color? bgPrimary30,
    Color? bgSecondary,
    Color? bgTertiary,
    Color? bgGrey,
    Color? bgGreyLight,
    Color? txtPrimary,
    Color? txtPrimary60,
    Color? txtPrimary30,
    Color? txtSecondary,
    Color? txtTertiary,
    Color? txtGrey,
    Color? buttonColor,
    Color? redError,
    TextStyle? titleTextStyle,
    TextStyle? h1TextStyle,
    TextStyle? h2TextStyle,
    TextStyle? h3TextStyle,
    TextStyle? paragraphTextStyle,
    TextStyle? boldParagraphTextStyle,
    TextStyle? detailsTextStyle,
  }) =>
      ThetaTheme(
        bgPrimary: bgPrimary ?? this.bgPrimary,
        bgPrimary60: bgPrimary60 ?? this.bgPrimary60,
        bgPrimary30: bgPrimary30 ?? this.bgPrimary30,
        bgSecondary: bgSecondary ?? this.bgSecondary,
        bgTertiary: bgTertiary ?? this.bgTertiary,
        bgGrey: bgGrey ?? this.bgGrey,
        bgGreyLight: bgGreyLight ?? this.bgGreyLight,
        txtPrimary: txtPrimary ?? this.txtPrimary,
        txtPrimary60: txtPrimary60 ?? this.txtPrimary60,
        txtPrimary30: txtPrimary30 ?? this.txtPrimary30,
        txtSecondary: txtSecondary ?? this.txtSecondary,
        txtTertiary: txtTertiary ?? this.txtTertiary,
        txtGrey: txtGrey ?? this.txtGrey,
        buttonColor: buttonColor ?? this.buttonColor,
        redError: redError ?? this.redError,
        titleTextStyle: titleTextStyle ?? this.titleTextStyle,
        h1TextStyle: h1TextStyle ?? this.h1TextStyle,
        h2TextStyle: h2TextStyle ?? this.h2TextStyle,
        h3TextStyle: h3TextStyle ?? this.h3TextStyle,
        paragraphTextStyle: paragraphTextStyle ?? this.paragraphTextStyle,
        boldParagraphTextStyle:
            boldParagraphTextStyle ?? this.boldParagraphTextStyle,
        detailsTextStyle: detailsTextStyle ?? this.detailsTextStyle,
      );

  @override
  ThetaTheme lerp(ThemeExtension<ThetaTheme>? other, double t) {
    if (other is! ThetaTheme) {
      return this;
    }
    return ThetaTheme(
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t) ?? Colors.white,
      bgPrimary60:
          Color.lerp(bgPrimary60, other.bgPrimary60, t) ?? Colors.white,
      bgPrimary30:
          Color.lerp(bgPrimary30, other.bgPrimary30, t) ?? Colors.white,
      bgSecondary:
          Color.lerp(bgSecondary, other.bgSecondary, t) ?? Colors.white,
      bgTertiary: Color.lerp(bgTertiary, other.bgTertiary, t) ?? Colors.white,
      bgGrey: Color.lerp(bgGrey, other.bgGrey, t) ?? Colors.white,
      bgGreyLight:
          Color.lerp(bgGreyLight, other.bgGreyLight, t) ?? Colors.white,
      txtPrimary: Color.lerp(txtPrimary, other.txtPrimary, t) ?? Colors.white,
      txtPrimary60:
          Color.lerp(txtPrimary60, other.txtPrimary60, t) ?? Colors.white,
      txtPrimary30:
          Color.lerp(txtPrimary30, other.txtPrimary30, t) ?? Colors.white,
      txtSecondary:
          Color.lerp(txtSecondary, other.txtSecondary, t) ?? Colors.white,
      txtTertiary:
          Color.lerp(txtTertiary, other.txtTertiary, t) ?? Colors.white,
      txtGrey: Color.lerp(txtGrey, other.txtGrey, t) ?? Colors.white,
      buttonColor:
          Color.lerp(buttonColor, other.buttonColor, t) ?? Colors.white,
      redError: Color.lerp(redError, other.redError, t) ?? Colors.white,
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t) ??
          const TextStyle(),
      h1TextStyle: TextStyle.lerp(h1TextStyle, other.h1TextStyle, t) ??
          const TextStyle(),
      h2TextStyle: TextStyle.lerp(h2TextStyle, other.h2TextStyle, t) ??
          const TextStyle(),
      h3TextStyle: TextStyle.lerp(h3TextStyle, other.h3TextStyle, t) ??
          const TextStyle(),
      paragraphTextStyle:
          TextStyle.lerp(paragraphTextStyle, other.paragraphTextStyle, t) ??
              const TextStyle(),
      boldParagraphTextStyle: TextStyle.lerp(
              boldParagraphTextStyle, other.boldParagraphTextStyle, t) ??
          const TextStyle(),
      detailsTextStyle:
          TextStyle.lerp(detailsTextStyle, other.detailsTextStyle, t) ??
              const TextStyle(),
    );
  }
}

const lightTheme = ThetaTheme(
  bgPrimary: Color(0xFFf8f8f8),
  bgPrimary60: Color.fromARGB(172, 248, 248, 248),
  bgPrimary30: Color.fromARGB(80, 248, 248, 248),
  bgSecondary: Color(0xFFf1f1f1),
  bgTertiary: Color(0xFFe6e6e6),
  bgGrey: Color(0xFFd8d8d8),
  bgGreyLight: Color.fromARGB(255, 229, 229, 229),
  txtPrimary: Color(0xFF020202),
  txtPrimary60: Color.fromARGB(172, 2, 2, 2),
  txtPrimary30: Color.fromARGB(80, 2, 2, 2),
  txtSecondary: Color(0xFF181818),
  txtTertiary: Color(0xFF222222),
  txtGrey: Color(0xFF444444),
  buttonColor: Palette.blue,
  redError: Color(0xFFff3b30),
  titleTextStyle: TextStyle(
    fontFamily: 'Degular',
    fontSize: 40,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.1,
    height: null,
    color: Color(0xFF020202),
  ),
  h1TextStyle: TextStyle(
    fontFamily: 'Degular',
    fontSize: 40,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    height: null,
    color: Color(0xFF020202),
  ),
  h2TextStyle: TextStyle(
    fontFamily: 'Degular',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
    height: null,
    color: Color(0xFF020202),
  ),
  h3TextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: null,
    color: Color(0xFF020202),
  ),
  paragraphTextStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: null,
    color: Color(0xFF020202),
  ),
  boldParagraphTextStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: null,
    color: Color(0xFF020202),
  ),
  detailsTextStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: null,
    color: Color(0xFF020202),
  ),
);

const darkTheme = ThetaTheme(
  bgPrimary: Color(0xFF222222),
  bgPrimary60: Color.fromARGB(172, 2, 2, 2),
  bgPrimary30: Color.fromARGB(80, 2, 2, 2),
  bgSecondary: Color(0xFF181818),
  bgTertiary: Color(0xFF383838),
  bgGrey: Color(0xFF333333),
  bgGreyLight: Color(0xFF444444),
  txtPrimary: Color(0xFFF8F8F8),
  txtPrimary60: Color.fromARGB(172, 248, 248, 248),
  txtPrimary30: Color.fromARGB(80, 248, 248, 248),
  txtSecondary: Color(0xFFf1f1f1),
  txtTertiary: Color(0xFFe6e6e6),
  txtGrey: Color(0xFFd8d8d8),
  buttonColor: Palette.blue,
  redError: Color(0xFFff3b30),
  titleTextStyle: TextStyle(
    fontFamily: 'Degular',
    fontSize: 40,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.1,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
  h1TextStyle: TextStyle(
    fontFamily: 'Degular',
    fontSize: 40,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
  h2TextStyle: TextStyle(
    fontFamily: 'Degular',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
  h3TextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
  paragraphTextStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
  boldParagraphTextStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
  detailsTextStyle: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: null,
    color: Color(0xFFF8F8F8),
  ),
);
