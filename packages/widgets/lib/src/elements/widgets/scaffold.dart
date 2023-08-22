// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

// Flutter imports:
import 'package:defer_pointer/defer_pointer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class OpenWScaffold extends StatefulWidget {
  const OpenWScaffold({
    super.key,
    required this.nodeState,
    required this.children,
    required this.fill,
    required this.isScrollable,
    required this.isClipped,
    required this.bodyExtended,
    required this.isBoxed,
    required this.flag,
  });

  final WidgetState nodeState;
  final List<CNode> children;
  final bool isBoxed;
  final FFill fill;
  final bool isScrollable;
  final bool isClipped;
  final bool bodyExtended;
  final bool flag;

  @override
  State<OpenWScaffold> createState() => _OpenWScaffoldState();
}

class _OpenWScaffoldState extends State<OpenWScaffold> {
  @override
  void initState() {
    super.initState();
    final state = context.read<TreeState>();
    state.onFitChanged(
        widget.nodeState.node.getAttributes[DBKeys.componentFit] == "absolute"
            ? ComponentFit.absolute
            : ComponentFit.autoLayout);
  }

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    final widgets =
        widget.children.map((final e) => BoxTransformBuilder(node: e)).toList();
    if (state.forPlay) {
      return Stack(
        children: widgets,
      );
    }
    return DragTarget<DragTargetSingleNodeModel>(
      onAcceptWithDetails: (data) {
        var renderBox = context.findRenderObject() as RenderBox;
        final offsetLocalRelative = renderBox.globalToLocal(data.offset);
        context.read<TreeGlobalState>().onNodeAdded(
              data.data.node,
              widget.nodeState.node,
              offsetLocalRelative,
            );
      },
      builder: (context, _, __) => DeferredPointerHandler(
        child: Stack(
          children: [
            Positioned.fill(
              child: MouseRegion(onHover: (e) {
                final state = context.read<TreeState>();
                if (state.hoveredNode?.id != widget.nodeState.node.id) {
                  context
                      .read<TreeGlobalState>()
                      .onNodeHovered(widget.nodeState.node, state.deviceType);
                }
              }),
            ),
            ...widgets,
          ],
        ),
      ),
    );
  }
}
