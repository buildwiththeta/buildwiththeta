import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:playground/src/core/constants/assets.dart';

class AppTheme {
  AppTheme._();

  /// Toggle the current theme (dark 2 light or light 2 dark)
  static toggleTheme(BuildContext context, AdaptiveThemeMode mode) =>
      mode == AdaptiveThemeMode.light
          ? AdaptiveTheme.of(context).setDark()
          : AdaptiveTheme.of(context).setLight();

  /// Return a logo depending on the current theme
  static String logo(AdaptiveThemeMode mode) => mode == AdaptiveThemeMode.light
      ? AppAssets.logo.light.logo
      : AppAssets.logo.dark.logo;

  /// Return a small logo depending on the current theme
  static String logoExtended(AdaptiveThemeMode mode) =>
      mode == AdaptiveThemeMode.light
          ? AppAssets.logo.light.logoExtended
          : AppAssets.logo.dark.logoExtended;

  /// Return the icon to toggle the theme depending on the current theme (sun or moon)
  static IconData themeIcon(AdaptiveThemeMode mode) =>
      mode == AdaptiveThemeMode.light
          ? CupertinoIcons.sun_max
          : CupertinoIcons.moon;

  static String iconName(AdaptiveThemeMode mode) =>
      mode == AdaptiveThemeMode.light ? 'light.svg' : 'dark.svg';
}
