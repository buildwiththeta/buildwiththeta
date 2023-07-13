import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class PanelBoxWidget extends StatelessWidget {
  const PanelBoxWidget({super.key, required this.child, this.width});

  final Widget child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      width: width ?? 300,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      margin: const EdgeInsets.only(
          left: 100, right: Grid.small, top: Grid.small, bottom: Grid.small),
      decoration: BoxDecoration(
        color: theme.bgPrimary,
        borderRadius: const BorderRadius.all(Radius.circular(Grid.small)),
        boxShadow: [
          BoxShadow(
            color: theme.bgGrey,
            offset: const Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}
