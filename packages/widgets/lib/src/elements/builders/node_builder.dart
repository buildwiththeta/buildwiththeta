import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class NodeBuilder extends StatefulWidget {
  const NodeBuilder({
    super.key,
    required this.node,
    required this.child,
    required this.onTap,
    required this.onPanStart,
  });

  final CNode node;
  final Widget child;

  final Function() onTap;
  final Function() onPanStart;

  @override
  State<NodeBuilder> createState() => _NodeBuilderState();
}

class _NodeBuilderState extends State<NodeBuilder> {
  _handleDecorationChange(CNode? focusNode) => (focusNode?.id == widget.node.id)
      ? BoxDecoration(
          border: Border.all(width: 2, color: Palette.blue),
        )
      : const BoxDecoration();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TreeState>();
    if (state.forPlay) return widget.child;
    return DecoratedBox(
      decoration: _handleDecorationChange(state.focusedNode),
      position: DecorationPosition.foreground,
      child: GestureDetector(
        onTap: widget.onTap,
        onPanStart: (e) => widget.onPanStart(),
        child: widget.child,
      ),
    );
  }
}
