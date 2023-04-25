import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

/// Button with an icon. default is download icon
class ThetaDesignButtonIcon extends StatelessWidget {
  const ThetaDesignButtonIcon(
    this.iconData, {
    super.key,
    required this.onTap,
    this.iconColor,
    this.isPrimary = true,
    this.height,
  });

  /// Icon to be displayed
  final IconData iconData;

  /// Color of the icon, default is Palette.txtPrimary
  final Color? iconColor;

  /// onTap function
  final Function() onTap;

  /// If true, the button will be primary, default is true
  /// If false, the button will be secondary
  /// Primary color is Palette.buttonColor
  /// Secondary color is Palette.bgGrey
  final bool isPrimary;

  /// Height of the button, default is 40
  final double? height;

  @override
  Widget build(final BuildContext context) {
    return Semantics(
      button: true,
      child: CupertinoButton(
        color: isPrimary ? Palette.buttonColor : Palette.bgGrey,
        onPressed: () => onTap.call(),
        child: Icon(
          iconData,
          color: iconColor ?? Colors.white,
        ),
      ),
    );
  }
}
