import 'package:flutter/material.dart';
import '../../theta_design_system.dart';

void showSnack(final String title, final BuildContext context) {
  final theme = Theme.of(context).extension<ThetaTheme>()!;

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        elevation: 0,
        width: 300,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: theme.bgPrimary,
        content: Center(child: TParagraph(title)),
      ),
    );
}
