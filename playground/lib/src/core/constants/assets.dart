class AppAssets {
  const AppAssets._();

  static const logo = _LogoAssets();

  // Images
  static const String loginCover = 'assets/images/login-cover.png';
  static const String onboardingCover = 'assets/images/onboarding-cover.jpg';

  // Icons
  static const String appleLogo = 'assets/icons/apple.png';
  static const String googleLogo = 'assets/icons/google.png';
  static const String facebookLogo = 'assets/icons/facebook.png';
  static const String githubLogo = 'assets/icons/github.png';

  // Control icons
  static const String startAlignment =
      'assets/icons/controls/start-alignment.png';
  static const String centerAlignment =
      'assets/icons/controls/center-alignment.png';
  static const String endAlignment = 'assets/icons/controls/end-alignment.png';
  static const String spaceBetweenAlignment =
      'assets/icons/controls/space-between-alignment.png';
  static const String spaceAroundAlignment =
      'assets/icons/controls/space-around-alignment.png';
  static const String stretchAlignment =
      'assets/icons/controls/stretch-alignment.png';

  static const String iPadAndIPhone =
      'assets/icons/controls/ipad.and.iphone.svg';
  static const String iPhone = 'assets/icons/controls/iphone.svg';
  static const String iPad = 'assets/icons/controls/ipad.svg';
  static const String iPadLandscape =
      'assets/icons/controls/ipad.landscape.svg';
  static const String display = 'assets/icons/controls/display.svg';
  static const String laptop = 'assets/icons/controls/laptop.svg';
  static const String componentMode =
      'assets/icons/controls/rectangle.dashed.svg';

  static const String fitExpand =
      'assets/icons/controls/rectangle.portrait.center.inset.filled.svg';
  static const String fitLoose =
      'assets/icons/controls/rectangle.portrait.topthird.inset.filled.svg';

  static const String alignHorizontalLeft =
      'assets/icons/controls/align.horizontal.left.svg';
  static const String alignHorizontalCenter =
      'assets/icons/controls/align.horizontal.center.svg';
  static const String alignHorizontalRight =
      'assets/icons/controls/align.horizontal.right.svg';
  static const String alignVerticalTop =
      'assets/icons/controls/align.vertical.top.svg';
  static const String alignVerticalCenter =
      'assets/icons/controls/align.vertical.center.svg';
  static const String alignVerticalBottom =
      'assets/icons/controls/align.vertical.bottom.svg';
  static const String arrowTurnUpForwardIphone =
      'assets/icons/controls/arrow.turn.up.forward.iphone.svg';
  static const String curlyBracesSquare =
      'assets/icons/controls/curlybraces.square.svg';

  //json
  static const String speaking = 'assets/json/speaking.json';
  static const String nodes = 'assets/json/nodes.json';
  static const String codemagic = 'assets/json/load_codemagic.json';
  static const String materialIcons = 'assets/json/material-icons.json';
}

class _LogoAssets {
  const _LogoAssets();
  final _DarkLogoAssets dark = const _DarkLogoAssets();
  final _LightLogoAssets light = const _LightLogoAssets();
}

class _DarkLogoAssets {
  const _DarkLogoAssets();

  /// Must be used with AppTheme.logo
  final String logo = 'assets/pictogram_negative.svg';

  /// Must be used with AppTheme.smallLogo
  final String logoExtended = 'assets/logo_extended_negative.svg';
}

class _LightLogoAssets {
  const _LightLogoAssets();

  /// Must be used with AppTheme.logo
  final String logo = 'assets/pictogram_positive.svg';

  /// Must be used with AppTheme.smallLogo
  final String logoExtended = 'assets/logo_extended_positive.svg';
}
