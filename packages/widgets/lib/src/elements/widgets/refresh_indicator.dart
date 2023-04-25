import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a [WRefreshIndicator] widget in Teta
/// It is a wrapper for the [CustomRefreshIndicator] widget
/// It takes a [FTextTypeInput] as a value
/// It takes a [CNode] as a child
/// It takes a [FSize] as a height
/// It takes a [FTextTypeInput] as a duration
class OpenWRefreshIndicator extends NodeWidget {
  /// Returns a [Center] widget in Teta
  const OpenWRefreshIndicator({
    super.key,
    required super.nodeState,
    required this.children,
    required this.height,
    required this.duration,
    required this.actionValue,
  });

  final List<CNode> children;
  final FTextTypeInput actionValue;
  final FSize height;
  final FTextTypeInput duration;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final val = height.get(
          context: context,
          isWidth: false,
          state: state,
        ) ??
        150;

    /// Returns a [CustomRefreshIndicator] widget
    return CustomRefreshIndicator(
      offsetToArmed: val,
      child: children.isNotEmpty
          ? children[0].toWidget(
              state: nodeState.copyWith(node: children[0]), context: context)
          : const SizedBox(),
      builder: (
        final BuildContext context,
        final Widget child,
        final IndicatorController controller,
      ) {
        /// Returns a [Stack] widget
        return Stack(
          children: <Widget>[
            /// Returns a [AnimatedBuilder] widget, which is a wrapper for the [CircularProgressIndicator] widget
            /// It's purpose is to show a circular progress indicator
            AnimatedBuilder(
              animation: controller,
              builder: (final BuildContext context, final _) {
                return children.length >= 2
                    ? children[1].toWidget(
                        state: nodeState.copyWith(node: children[1]),
                        context: context)
                    : const CircularProgressIndicator();
              },
            ),

            /// Returns a [AnimatedBuilder] widget, which is a wrapper for the [Transform.translate] widget
            /// It's purpose is to translate the child widget
            AnimatedBuilder(
              builder: (final context, final _) {
                return Transform.translate(
                  offset: Offset(0, controller.value * val),
                  child: child,
                );
              },
              animation: controller,
            ),
          ],
        );
      },
      onRefresh: () async {},
    );
  }
}
