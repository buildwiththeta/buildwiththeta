import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWAnimationConfigurationListView extends NodeWidget {
  /// Returns a [OpenWAnimationConfigurationListView] widget in Teta
  const OpenWAnimationConfigurationListView({
    super.key,
    required super.nodeState,
    required this.index,
    required this.duration,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput index;
  final FTextTypeInput duration;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return AnimationConfiguration.staggeredList(
      position: int.tryParse(
            index.get(
              state: state,
              loop: nodeState.loop,
              context: context,
            ),
          ) ??
          0,
      duration: Duration(
        milliseconds: int.tryParse(
              duration.get(
                state: state,
                loop: nodeState.loop,
                context: context,
              ),
            ) ??
            375,
      ),
      child: ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      ),
    );
  }
}
