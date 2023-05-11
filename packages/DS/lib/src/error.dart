import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

/// Widget for errors
class TErrorWidget extends StatelessWidget {
  /// Report an error inside the widgets' tree
  const TErrorWidget(this.error, {final Key? key}) : super(key: key);

  /// Error message
  final String error;

  @override
  Widget build(final BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.warning,
            size: 40,
            color: Theme.of(context).extension<ThetaTheme>()!.txtPrimary,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TParagraph(
              error,
              isCentered: true,
            ),
          ),
        ],
      ),
    );
  }
}
