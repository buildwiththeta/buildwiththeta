import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

/// A dangerous button widget
class ThetaDesignDangerousButton extends StatelessWidget {
  /// A dangerous button widget
  const ThetaDesignDangerousButton(
    this.label, {
    super.key,
    required this.onTap,
  });

  final String label;
  final Function() onTap;

  @override
  Widget build(final BuildContext context) {
    return Semantics(
      button: true,
      child: BounceForLargeWidgets(
        onTap: () => onTap.call(),
        child: Container(
          height: 32,
          padding: EI.mdH,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(Grid.small),
            ),
          ),
          child: Center(
            child: TActionLabel(
              label,
            ),
          ),
        ),
      ),
    );
  }
}
