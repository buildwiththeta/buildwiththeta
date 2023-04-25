import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Offstage widget
/// It wants a [FTextTypeInput] as a value
/// It wants a [CNode] as a child
/// It wants a [BuildContext] and a [WidgetState] to get the [FTextTypeInput] value.
class OpenWOffStage extends NodeWidget {
  /// Returns a Offstage widget
  const OpenWOffStage({
    super.key,
    required super.nodeState,
    required this.value,
    this.child,
  });

  /// The [CNode] child
  final CNode? child;

  /// The [FTextTypeInput] value, representing a boolean
  final FTextTypeInput value;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    /// The [FTextTypeInput] value, representing a boolean
    /// It is converted to a string and then to a boolean
    /// It is used to determine if the [Offstage] widget is offstage or not
    final val = value
        .get(
          state: state,
          context: context,
          loop: nodeState.loop,
        )

        /// Remove all spaces
        .replaceAll(' ', '');

    /// Returns a [Offstage] widget
    return Offstage(
      offstage: val == 'true',
      child: ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      ),
    );
  }
}
