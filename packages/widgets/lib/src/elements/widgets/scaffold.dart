// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

// Flutter imports:
import 'package:defer_pointer/defer_pointer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';
import 'package:theta_open_widgets/src/elements/builders/multi_box_transform.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:device_frame/device_frame.dart';

class OpenWScaffold extends StatefulWidget {
  const OpenWScaffold({
    super.key,
    required this.nodeState,
    required this.children,
    required this.fill,
  });

  final WidgetState nodeState;
  final List<CNode> children;
  final FFill fill;

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

  ThemeData _theme(BuildContext context, TreeState treeState) {
    final density = [
      DeviceType.desktop,
      DeviceType.laptop,
    ].contains(treeState.deviceType)
        ? VisualDensity.compact
        : null;
    return Theme.of(context).copyWith(
      platform: treeState.deviceInfo.identifier.platform,
      visualDensity: density,
    );
  }

  @override
  Widget build(final BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final state = context.watch<TreeState>();
    if (state.forPlay) {
      return LayoutBuilder(builder: (context, constraints) {
        return MediaQuery(
          data: mediaQuery.copyWith(
            size: Size(constraints.maxWidth, constraints.maxHeight),
            devicePixelRatio: state.deviceInfo.pixelRatio,
            textScaleFactor: 1,
          ),
          child: Theme(
            data: _theme(context, state),
            child: Stack(
              children: widget.children
                  .map((final e) => BoxTransformBuilder(
                      node: e,
                      screenSize:
                          Size(constraints.maxWidth, constraints.maxHeight)))
                  .toList(),
            ),
          ),
        );
      });
    }

    final focusedNodes = widget.children
        .where((element) => state.focusedNodes
            .any((focusedNode) => focusedNode.id == element.id))
        .toList();
    final unfocusedNodes = widget.children
        .where((element) =>
            state.focusedNodes
                .any((focusedNode) => focusedNode.id == element.id) ==
            false)
        .toList();
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
        child: LayoutBuilder(builder: (context, constraints) {
          return MediaQuery(
            data: mediaQuery.copyWith(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              textScaleFactor: 1,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: MouseRegion(onHover: (e) {
                    final state = context.read<TreeState>();
                    if (state.hoveredNode?.id != widget.nodeState.node.id) {
                      context.read<TreeGlobalState>().onNodeHovered(
                          widget.nodeState.node, state.deviceType);
                    }
                  }),
                ),
                if (focusedNodes.isNotEmpty)
                  MultiBoxTransformBuilder(
                    nodes: focusedNodes,
                    screenSize:
                        Size(constraints.maxWidth, constraints.maxHeight),
                  ),
                ...unfocusedNodes
                    .map((final e) => BoxTransformBuilder(
                        node: e,
                        screenSize:
                            Size(constraints.maxWidth, constraints.maxHeight)))
                    .toList(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
