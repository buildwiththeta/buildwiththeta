// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class OpenWScaffold extends NodeWidget {
  const OpenWScaffold({
    super.key,
    required super.nodeState,
    required this.children,
    required this.fill,
    required this.showAppBar,
    required this.showBottomBar,
    required this.showDrawer,
    required this.isScrollable,
    required this.isClipped,
    required this.bodyExtended,
    required this.isBoxed,
    required this.flag,
  });

  final List<CNode> children;
  final bool isBoxed;
  final FFill fill;
  final bool showAppBar;
  final bool showBottomBar;
  final bool showDrawer;
  final bool isScrollable;
  final bool isClipped;
  final bool bodyExtended;
  final bool flag;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    if (state.forPlay) {
      return ColoredBox(
        color: HexColor(
          fill.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        child: _childWids(context, nodeState),
      );
    }
    return DragTarget<DragTargetSingleNodeModel>(
      onAccept: (data) => TreeGlobalState.onNodeAdded(
        data.node,
        nodeState.node,
      ),
      builder: (context, _, __) => ColoredBox(
        color: HexColor(
          fill.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        child: _childWids(context, nodeState),
      ),
    );
  }

  Widget _childWids(final BuildContext context, final WidgetState nodeState) {
    final widgets =
        children.map((final e) => BoxTransformBuilder(node: e)).toList();
    return widgets.isNotEmpty
        ? isBoxed
            ? Center(
                child: WrapperContainer(
                  child: Stack(
                    children: widgets,
                  ),
                ),
              )
            : Stack(
                children: widgets,
              )
        : const SizedBox();
  }
}
