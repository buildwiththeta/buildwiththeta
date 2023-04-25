// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:themed/themed.dart';
import 'package:theta_design_system/theta_design_system.dart';

class CText extends StatelessWidget {
  const CText(
    this.value, {
    final Key? key,
    required this.typography,
    this.color = Palette.txtPrimary,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final TextStyle? typography;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    return Text(
      value,
      textDirection: TextDirection.ltr,
      style: typography?.fontFamily != null
          ? typography!
              .add(decoration ?? TextDecoration.none)
              .add(color ?? Palette.txtPrimary)
          : GoogleFonts.manrope(
              textStyle: typography!
                  .add(decoration ?? TextDecoration.none)
                  .add(color ?? Palette.txtPrimary)),
      textAlign: isCentered != null ? TextAlign.center : TextAlign.start,
      maxLines: maxLines,
    );
  }
}

class TTitle extends CText {
  const TTitle(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.titleTextStyle,
          color: color,
          isCentered: isCentered,
        );
}

class THeadline1 extends CText {
  const THeadline1(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.h1TextStyle,
          color: color,
          isCentered: isCentered,
        );
}

class THeadline2 extends CText {
  const THeadline2(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.h2TextStyle,
          color: color,
          isCentered: isCentered,
        );
}

class THeadline3 extends CText {
  const THeadline3(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.h3TextStyle,
          color: color,
          isCentered: isCentered,
        );
}

class TParagraph extends CText {
  const TParagraph(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
    final TextDecoration? decoration,
    final int? maxLines,
  }) : super(
          value,
          key: key,
          typography: Palette.paragraphTextStyle,
          color: color,
          isCentered: isCentered,
          decoration: decoration,
          maxLines: maxLines,
        );
}

class TDetailLabel extends CText {
  const TDetailLabel(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.detailsTextStyle,
          color: color,
          isCentered: isCentered,
        );
}

class TActionLabel extends CText {
  const TActionLabel(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.boldParagraphTextStyle,
          color: color,
          isCentered: isCentered,
        );
}

class TAlertTitle extends CText {
  const TAlertTitle(
    final String value, {
    final Key? key,
    final Color? color,
    final bool? isCentered,
  }) : super(
          value,
          key: key,
          typography: Palette.h1TextStyle,
          color: color,
          isCentered: isCentered,
        );
}
