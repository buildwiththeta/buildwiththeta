// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a tooltip widget in Teta
/// It is a wrapper for the [Tooltip] widget
/// It takes a [FTextTypeInput] as a value
/// It takes a [CNode] as a child
class OpenWTooltip extends NodeWidget {
  /// Returns a tooltip widget in Teta
  const OpenWTooltip({
    super.key,
    required super.nodeState,
    required this.value,
    this.child,
  });

  /// The child widget
  final CNode? child;

  /// The value of the tooltip
  final FTextTypeInput value;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    /// Returns a Tooltip widget
    return Tooltip(
      /// Get the value from the state and convert it to a string
      message: value.get(
        state: state,
        loop: nodeState.loop,
        context: context,
      ),
      child: ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      ),
    );
  }
}
