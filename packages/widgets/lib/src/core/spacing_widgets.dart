import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class SpacingMiddleWidget extends StatelessWidget {
  const SpacingMiddleWidget({
    super.key,
    required this.parent,
    required this.spacing,
    required this.direction,
  });

  final CNode parent;
  final Axis direction;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final state = context.read<TreeState>();
    if (state.forPlay) {
      return SizedBox.square(
        dimension: spacing,
      );
    } else {
      if (state.focusedNode?.id != parent.id) {
        return SizedBox.square(
          dimension: spacing,
        );
      }
      if (direction == Axis.horizontal) {
        return Center(
          child: SizedBox(
            width: spacing,
            child: FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 0.25,
              child: Center(
                child: Container(
                  width: 2,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Palette.magenta,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ),
        );
      }
      return Center(
        child: SizedBox(
          height: spacing,
          child: FractionallySizedBox(
            widthFactor: 0.25,
            heightFactor: 1,
            child: Center(
              child: Container(
                width: double.infinity,
                height: 2,
                decoration: BoxDecoration(
                  color: Palette.magenta,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
