import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWScaleAnimation extends StatelessWidget {
  /// Returns a [OpenWScaleAnimation] widget in Teta
  const OpenWScaleAnimation({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  @override
  Widget build(final BuildContext context) {
    return ScaleAnimation(
      child: ChildBuilder(
        context: context,
        state: state,
        child: child,
      ),
    );
  }
}
