import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWAnimationConfigGridView extends NodeWidget {
  /// Returns a [Align] widget in Teta
  const OpenWAnimationConfigGridView({
    super.key,
    required super.nodeState,
    required this.index,
    required this.duration,
    required this.numberColumns,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput index;
  final FTextTypeInput duration;
  final FTextTypeInput numberColumns;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: int.tryParse(
            numberColumns.get(
              context: context,
              state: state,
              loop: nodeState.loop,
            ),
          ) ??
          2,
      position: int.tryParse(
            index.get(
              context: context,
              state: state,
              loop: nodeState.loop,
            ),
          ) ??
          0,
      duration: Duration(
        milliseconds: int.tryParse(
              duration.get(
                context: context,
                state: state,
                loop: nodeState.loop,
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
