import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

/// A button widget
class ThetaDesignButton extends StatelessWidget {
  /// A button widget
  const ThetaDesignButton(
    this.label, {
    super.key,
    required this.onTap,
    this.isPrimary = true,
    this.height,
    this.isTransparent = false,
    this.primaryColor,
    this.isLoading = false,
    this.iconWidget,
  });

  /// Primary Color
  final Color? primaryColor;

  /// Label of the button
  final String label;

  /// onTap function
  final Function() onTap;

  /// If true, the button will be primary, default is true
  final bool isPrimary;

  /// Height of the button, default is 32
  final double? height;

  /// If true, the button will be transparent, default is false
  final bool? isTransparent;

  /// If true, the button will be showing CircularProgressIndicator, default is false
  final bool? isLoading;

  /// Icon widget
  final Widget? iconWidget;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Semantics(
      button: true,
      child: isTransparent ?? false
          ? SizedBox(
              height: 40,
              child: CupertinoButton(
                padding: const EdgeInsets.symmetric(horizontal: Grid.medium),
                onPressed: () => onTap.call(),
                child: isLoading == true
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(),
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (iconWidget != null) ...[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: iconWidget!,
                            ),
                          ],
                          TDetailLabel(
                            label,
                          ),
                        ],
                      ),
              ),
            )
          : SizedBox(
              height: 40,
              child: CupertinoButton(
                color: primaryColor ??
                    (isPrimary ? theme.buttonColor : theme.bgGrey),
                onPressed: () => onTap.call(),
                padding: const EdgeInsets.symmetric(horizontal: Grid.medium),
                child: isLoading == true
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(),
                      )
                    : Row(
                        children: [
                          if (iconWidget != null) ...[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: iconWidget!,
                            ),
                          ],
                          TDetailLabel(
                            label,
                            color: isPrimary ? Colors.white : theme.txtPrimary,
                          ),
                        ],
                      ),
              ),
            ),
    );
  }
}
