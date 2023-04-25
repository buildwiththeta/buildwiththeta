import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class qualcosa extends NodeWidget {
  const qualcosa({
    required this.nodeState,
    required this.child,
    super.key,
  }) : super(nodeState: nodeState);

  @override
  final WidgetState nodeState;
  final Widget? child;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return Container();
  }
}

abstract class NodeWidget extends StatefulWidget {
  const NodeWidget({
    super.key,
    required this.nodeState,
  });

  final WidgetState nodeState;
  Widget build(BuildContext context, TreeState state, WidgetState nodeState);

  @override
  State<NodeWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<NodeWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.build(context, TreeGlobalState.state, widget.nodeState);
  }
}
