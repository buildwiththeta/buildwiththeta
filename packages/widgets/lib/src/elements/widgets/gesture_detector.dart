// Flutter imports:

import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWGestureDetector extends StatelessWidget {
  /// Returns a Gesture Detector
  const OpenWGestureDetector({
    super.key,
    required this.state,
    required this.onTap,
    required this.onDoubleTap,
    required this.onLongPress,
    this.child,
  });

  final WidgetState state;
  final CNode? child;
  final Function() onTap;
  final Function() onDoubleTap;
  final Function() onLongPress;

  @override
  Widget build(final BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// Call the onTap function
        onTap.call();
      },
      onDoubleTap: () {
        /// Call the onDoubleTap function
        onDoubleTap.call();
      },
      onLongPress: () {
        /// Call the onLongPress function
        onLongPress.call();
      },
      child: ChildBuilder(
        context: context,
        state: state,
        child: child,
      ),
    );
  }
}
