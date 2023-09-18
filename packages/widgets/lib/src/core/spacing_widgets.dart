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
    if (spacing == 0) {
      return child;
    }
    return direction == Axis.vertical
        ? Padding(
            padding: EdgeInsets.only(
              top: spacing / 2,
              bottom: spacing / 2,
            ),
            child: child,
          )
        : Padding(
            padding: EdgeInsets.only(
              left: spacing / 2,
              right: spacing / 2,
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
    if (spacing == 0) {
      return child;
    }
    return direction == Axis.vertical
        ? Padding(
            padding: EdgeInsets.only(
              top: spacing / 2,
            ),
            child: child,
          )
        : Padding(
            padding: EdgeInsets.only(
              left: spacing / 2,
            ),
            child: child,
          );
  }
}
