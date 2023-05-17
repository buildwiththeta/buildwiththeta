import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWBouncingWidget extends NodeWidget {
  /// Returns a Container widget
  const OpenWBouncingWidget({
    super.key,
    required super.nodeState,
    required this.value,
    required this.valueOfCondition,
    required this.onPressed,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput value;
  final FTextTypeInput valueOfCondition;
  final Function() onPressed;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final val = value.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    final scale = valueOfCondition.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    return const SizedBox
        .shrink(); /*BouncingWidget(
      duration: Duration(milliseconds: int.tryParse(val) ?? 200),
      scaleFactor: double.tryParse(scale) ?? 1,
      onPressed: () {
        onPressed.call();
      },
      child: ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      ),
    );*/
  }
}
