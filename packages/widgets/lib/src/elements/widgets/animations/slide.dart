import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:theta_models/theta_models.dart';

class OpenWSlideAnimation extends StatelessWidget {
  /// Returns a [OpenWSlideAnimation] widget in Teta
  const OpenWSlideAnimation({
    super.key,
    required this.state,
    this.child,
  });

  final WidgetState state;
  final CNode? child;

  @override
  Widget build(final BuildContext context) {
    return SlideAnimation(
      child: ChildBuilder(
        context: context,
        state: state,
        child: child,
      ),
    );
  }
}
