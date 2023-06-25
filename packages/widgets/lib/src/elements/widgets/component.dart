// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

class OpenWComponent extends NodeWidget {
  const OpenWComponent({
    super.key,
    required super.nodeState,
    required this.componentChildren,
  });

  final List<CNode> componentChildren;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    const NodeRendering nodeRendering = NodeRendering();
    if (componentChildren.isEmpty) {
      return const Placeholder();
    }
    final widget = nodeRendering.renderTree(componentChildren);
    return widget.toWidget(
      context: context,
      state: WidgetState(node: widget, loop: 0),
    );
  }
}
