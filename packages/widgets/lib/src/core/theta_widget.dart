import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  Widget build(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    return widget.build(context, state, widget.nodeState);
  }
}
