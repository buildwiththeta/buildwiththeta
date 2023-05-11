// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theta_design_system/theta_design_system.dart';

class CText extends StatelessWidget {
  const CText(
    this.value, {
    final Key? key,
    required this.typography,
    this.color,
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
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Text(
      value,
      textDirection: TextDirection.ltr,
      style: typography?.fontFamily != null
          ? typography!.copyWith(
              decoration: decoration ?? TextDecoration.none,
              color: color ?? theme.txtPrimary,
            )
          : GoogleFonts.manrope(
              textStyle: typography!.copyWith(
              decoration: decoration ?? TextDecoration.none,
              color: color ?? theme.txtPrimary,
            )),
      textAlign: isCentered != null ? TextAlign.center : TextAlign.start,
      maxLines: maxLines,
    );
  }
}

class TTitle extends StatelessWidget {
  const TTitle(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.titleTextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class THeadline1 extends StatelessWidget {
  const THeadline1(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.h1TextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class THeadline2 extends StatelessWidget {
  const THeadline2(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.h2TextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class THeadline3 extends StatelessWidget {
  const THeadline3(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.h3TextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class TParagraph extends StatelessWidget {
  const TParagraph(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.paragraphTextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class TDetailLabel extends StatelessWidget {
  const TDetailLabel(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.detailsTextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class TActionLabel extends StatelessWidget {
  const TActionLabel(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.boldParagraphTextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}

class TAlertTitle extends StatelessWidget {
  const TAlertTitle(
    this.value, {
    final Key? key,
    this.color,
    this.isCentered,
    this.decoration,
    this.maxLines,
  }) : super(key: key);

  final String value;
  final Color? color;
  final bool? isCentered;
  final TextDecoration? decoration;
  final int? maxLines;

  final textStyle = const TextStyle();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return CText(
      value,
      typography: theme.h1TextStyle,
      color: color,
      isCentered: isCentered,
      decoration: decoration,
      maxLines: maxLines,
    );
  }
}
