import 'package:flutter/material.dart';

class SpacingMiddleWidget extends StatelessWidget {
  const SpacingMiddleWidget({
    super.key,
    required this.direction,
    required this.spacing,
    required this.child,
  });

  final Axis direction;
  final double spacing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return direction == Axis.vertical
        ? Padding(
            padding: EdgeInsets.only(
              top: spacing,
              bottom: spacing,
            ),
            child: child,
          )
        : Padding(
            padding: EdgeInsets.only(
              left: spacing,
              right: spacing,
            ),
            child: child,
          );
  }
}

class SpacingLastWidget extends StatelessWidget {
  const SpacingLastWidget({
    super.key,
    required this.direction,
    required this.spacing,
    required this.child,
  });

  final Axis direction;
  final double spacing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return direction == Axis.vertical
        ? Padding(
            padding: EdgeInsets.only(
              top: spacing,
            ),
            child: child,
          )
        : Padding(
            padding: EdgeInsets.only(
              left: spacing,
            ),
            child: child,
          );
  }
}
