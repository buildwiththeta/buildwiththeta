// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';

class OpenWComponent extends StatefulWidget {
  const OpenWComponent({
    super.key,
    required this.componentChildren,
  });
  final List<CNode> componentChildren;

  @override
  State<OpenWComponent> createState() => _OpenWComponentState();
}

class _OpenWComponentState extends State<OpenWComponent> {
  late List<CNode> componentChildren;

  @override
  void initState() {
    super.initState();
    componentChildren = widget.componentChildren;
  }

  @override
  Widget build(BuildContext context) {
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
