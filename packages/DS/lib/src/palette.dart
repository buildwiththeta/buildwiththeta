// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:themed/themed.dart';

class Palette {
  /// Brand gradient colors
  static const blue = ColorRef(Color(0xFF0A84FF));
  static const purple = ColorRef(Color(0xFF9A55FE));
  static const magenta = ColorRef(Color(0xFFFF5BB1));
  static const yellow = ColorRef(Color(0xFFFFBF2F));
  static const green = ColorRef(Color(0xFF22D3B6));

  // General
  static const redError = ColorRef(Color(0xFFff3b30));

  /// Bg color for buttons and CTAs
  static const buttonColor = ColorRef(blue);

  /// Background
  static const bgPrimary = ColorRef(Color(0xFF020202));
  static const bgPrimary60 = ColorRef(Color.fromARGB(172, 2, 2, 2));
  static const bgPrimary30 = ColorRef(Color.fromARGB(80, 2, 2, 2));
  static const bgSecondary = ColorRef(Color(0xFF181818));
  static const bgTertiary = ColorRef(Color(0xFF222222));
  static const bgGrey = ColorRef(Color(0xFF333333));
  static const bgGreyLight = ColorRef(Color(0xFF444444));

  // Text
  static const txtPrimary = ColorRef(Color(0xFFF8F8F8));
  static const txtPrimary60 = ColorRef(Color.fromARGB(172, 248, 248, 248));
  static const txtPrimary30 = ColorRef(Color.fromARGB(80, 248, 248, 248));
  static const txtSecondary = ColorRef(Color(0xFFf1f1f1));
  static const txtTertiary = ColorRef(Color(0xFFe6e6e6));
  static const txtGrey = ColorRef(Color(0xFFd8d8d8));

  static const titleTextStyle = TextStyleRef(TextStyle(
    fontFamily: 'Degular',
    fontSize: 40,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.1,
    height: null,
    color: Palette.txtPrimary,
  ));
  static const h1TextStyle = TextStyleRef(TextStyle(
    fontFamily: 'Degular',
    fontSize: 40,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    height: null,
    color: Palette.txtPrimary,
  ));
  static const h2TextStyle = TextStyleRef(TextStyle(
    fontFamily: 'Degular',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
    height: null,
    color: Palette.txtPrimary,
  ));
  static const h3TextStyle = TextStyleRef(TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: null,
    color: Palette.txtPrimary,
  ));
  static const paragraphTextStyle = TextStyleRef(TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: null,
    color: Palette.txtPrimary,
  ));
  static const boldParagraphTextStyle = TextStyleRef(TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: null,
    color: Palette.txtPrimary,
  ));
  static const detailsTextStyle = TextStyleRef(
    TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: null,
      color: Palette.txtPrimary,
    ),
  );
}

Map<ThemeRef, Object> lightPalette = {
  /// Brand gradient colors
  Palette.blue: const Color(0xFF0A84FF),
  Palette.purple: const Color(0xFF9A55FE),
  Palette.magenta: const Color(0xFFFF5BB1),
  Palette.yellow: const Color(0xFFFFBF2F),
  Palette.green: const Color(0xFF22D3B6),

  /// Bg color for buttons and CTAs
  Palette.buttonColor: Palette.blue.color,

  /// Background
  Palette.bgPrimary: const Color(0xFFf8f8f8),
  Palette.bgPrimary60: const Color.fromARGB(172, 248, 248, 248),
  Palette.bgPrimary30: const Color.fromARGB(80, 248, 248, 248),
  Palette.bgSecondary: const Color(0xFFf1f1f1),
  Palette.bgTertiary: const Color(0xFFe6e6e6),
  Palette.bgGrey: const Color(0xFFd8d8d8),
  Palette.bgGreyLight: const Color.fromARGB(255, 229, 229, 229),

  // Text
  Palette.txtPrimary: const Color(0xFF020202),
  Palette.txtPrimary60: const Color.fromARGB(172, 2, 2, 2),
  Palette.txtPrimary30: const Color.fromARGB(80, 2, 2, 2),
  Palette.txtSecondary: const Color(0xFF181818),
  Palette.txtTertiary: const Color(0xFF222222),
  Palette.txtGrey: const Color(0xFF444444),

  Palette.titleTextStyle: Palette.titleTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.h1TextStyle: Palette.h1TextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.h2TextStyle: Palette.h2TextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.h3TextStyle: Palette.h3TextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.paragraphTextStyle: Palette.paragraphTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.boldParagraphTextStyle:
      Palette.boldParagraphTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.detailsTextStyle: Palette.detailsTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
};

Map<ThemeRef, Object> dartPalette = {
  /// Brand gradient colors
  Palette.blue: const Color(0xFF0A84FF),
  Palette.purple: const Color(0xFF9A55FE),
  Palette.magenta: const Color(0xFFFF5BB1),
  Palette.yellow: const Color(0xFFFFBF2F),
  Palette.green: const Color(0xFF22D3B6),

  /// General
  Palette.redError: const Color(0xFFff3b30),

  /// Bg color for buttons and CTAs
  Palette.buttonColor: Palette.blue.color,

  /// Background
  Palette.bgPrimary: const Color(0xFF020202),
  Palette.bgPrimary60: const Color.fromARGB(172, 2, 2, 2),
  Palette.bgPrimary30: const Color.fromARGB(80, 2, 2, 2),
  Palette.bgSecondary: const Color(0xFF181818),
  Palette.bgTertiary: const Color(0xFF222222),
  Palette.bgGrey: const Color(0xFF333333),
  Palette.bgGreyLight: const Color(0xFF444444),

  // Text
  Palette.txtPrimary: const Color(0xFFF8F8F8),
  Palette.txtPrimary60: const Color.fromARGB(172, 248, 248, 248),
  Palette.txtPrimary30: const Color.fromARGB(80, 248, 248, 248),
  Palette.txtSecondary: const Color(0xFFf1f1f1),
  Palette.txtTertiary: const Color(0xFFe6e6e6),
  Palette.txtGrey: const Color(0xFFd8d8d8),

  Palette.titleTextStyle: Palette.titleTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.h1TextStyle: Palette.h1TextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.h2TextStyle: Palette.h2TextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.h3TextStyle: Palette.h3TextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.paragraphTextStyle: Palette.paragraphTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.boldParagraphTextStyle:
      Palette.boldParagraphTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
  Palette.detailsTextStyle: Palette.detailsTextStyle.textStyle.copyWith(
    color: Palette.txtPrimary,
  ),
};
