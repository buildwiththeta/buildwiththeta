import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

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
  Widget build(BuildContext context) =>
      widget.build(context, context.watch<TreeState>(), widget.nodeState);
}
