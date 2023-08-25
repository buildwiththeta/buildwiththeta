// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/node_builder.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

class OpenWComponent extends StatefulWidget {
  const OpenWComponent({
    super.key,
    required this.state,
    required this.componentChildren,
  });

  final WidgetState state;
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
    if (componentChildren.isEmpty) {
      return const Placeholder();
    }
    const NodeRendering nodeRendering = NodeRendering();
    final widget0 = nodeRendering.renderTree(componentChildren);
    final globalState = context.watch<TreeState>();

    return ChangeNotifierProvider(
      create: (_) => globalState.copyWith(
          nodeComponentID: widget.state.node.id,
          fit: widget0.getAttributes[DBKeys.componentFit] == 'absolute'
              ? ComponentFit.absolute
              : ComponentFit.autoLayout,
          nodeOverrides: [
            ...globalState.nodeOverrides,
            ...widget.state.node.getAttributes[DBKeys.overrides]
          ]),
      child: NodeBuilder(
        onHover: () {
          context.read<TreeGlobalState>().onNodeHovered(
              widget.state.node, context.read<TreeState>().deviceType);
        },
        onTap: () {
          context.read<TreeGlobalState>().onNodeFocused(
              widget.state.node, context.read<TreeState>().deviceType);
          setState(() {});
        },
        onPanStart: () {
          context.read<TreeGlobalState>().onNodeFocused(
              widget.state.node, context.read<TreeState>().deviceType);
          setState(() {});
        },
        state: widget.state,
        child: IgnorePointer(
          ignoring: !globalState.forPlay,
          child: widget0.toWidget(
            context: context,
            state: WidgetState(node: widget0, loop: 0),
          ),
        ),
      ),
    );
  }
}
