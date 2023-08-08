import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

import 'draggable.dart';
import 'drop_between_nodes_area.dart';

class TreeListElement extends StatefulWidget {
  const TreeListElement({
    super.key,
    required this.node,
    required this.index,
    required this.onAdd,
    required this.onAddBetween,
    required this.onMove,
    required this.onNodeFocused,
    required this.onNodeHovered,
    required this.onNodeRemoved,
    required this.onRightClick,
  });

  final CNode node;
  final double index;
  final Function(CNode newNode, CNode parent) onAdd;
  final Function(CNode newNode, CNode parent, CNode parentChild) onAddBetween;
  final Function(
          DragTargetMoveSingleNodeModel event, CNode newParent, double index)
      onMove;
  final Function(NodeID) onNodeFocused;
  final Function(NodeID) onNodeHovered;
  final Function(NodeID) onNodeRemoved;
  final Function(PointerDownEvent e, CNode node) onRightClick;

  @override
  State<TreeListElement> createState() => _ElementState();
}

class _ElementState extends State<TreeListElement> {
  ExpandableController? controller;

  @override
  void initState() {
    super.initState();
    if (widget.node.intrinsicState.canHave == ChildrenEnum.child) {
      if (widget.node.child != null) {
        controller = ExpandableController(
          initialExpanded: true,
        );
      }
    }
    if (widget.node.intrinsicState.canHave == ChildrenEnum.children) {
      if (widget.node.children != null && widget.node.children!.isNotEmpty) {
        controller = ExpandableController(
          initialExpanded: true,
        );
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.node.intrinsicState.canHave == ChildrenEnum.child) {
      if (widget.node.child != null) {
        controller = ExpandableController(
          initialExpanded: true,
        );
      }
    }
    if (widget.node.intrinsicState.canHave == ChildrenEnum.children) {
      if (widget.node.children != null && widget.node.children!.isNotEmpty) {
        controller = ExpandableController(
          initialExpanded: true,
        );
      }
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    // For nodes that cannot have children
    if (widget.node.intrinsicState.canHave == ChildrenEnum.none) {
      return TreeListDraggableElement(
        node: widget.node,
        index: widget.index + 1,
        onAdd: widget.onAdd,
        onAddBetween: widget.onAddBetween,
        onMove: widget.onMove,
        onNodeFocused: widget.onNodeFocused,
        onNodeHovered: widget.onNodeHovered,
        onNodeRemoved: widget.onNodeRemoved,
        onRightClick: widget.onRightClick,
      );
    }

    // For nodes that can have a single child
    if (widget.node.intrinsicState.canHave == ChildrenEnum.child) {
      // If the node hasn't got a child
      if (widget.node.child == null) {
        return TreeListDraggableElement(
          node: widget.node,
          index: widget.index + 1,
          onAdd: widget.onAdd,
          onAddBetween: widget.onAddBetween,
          onMove: widget.onMove,
          onNodeFocused: widget.onNodeFocused,
          onNodeHovered: widget.onNodeHovered,
          onNodeRemoved: widget.onNodeRemoved,
          onRightClick: widget.onRightClick,
        );
      }

      return ExpandablePanel(
        controller: controller,
        theme: const ExpandableThemeData(hasIcon: false),
        header: TreeListDraggableElement(
          node: widget.node,
          index: widget.index + 1,
          controller: controller,
          onAdd: widget.onAdd,
          onAddBetween: widget.onAddBetween,
          onMove: widget.onMove,
          onNodeFocused: widget.onNodeFocused,
          onNodeHovered: widget.onNodeHovered,
          onNodeRemoved: widget.onNodeRemoved,
          onRightClick: widget.onRightClick,
        ),
        collapsed: const SizedBox.shrink(),
        expanded: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TreeListElement(
            node: widget.node.child!,
            index: widget.index + 1,
            onAdd: widget.onAdd,
            onAddBetween: widget.onAddBetween,
            onMove: widget.onMove,
            onNodeFocused: widget.onNodeFocused,
            onNodeHovered: widget.onNodeHovered,
            onNodeRemoved: widget.onNodeRemoved,
            onRightClick: widget.onRightClick,
          ),
        ),
      );
    }

    // For nodes that can have multiple children
    // ---
    // If the node hasn't got any children
    if (widget.node.children == null) {
      return TreeListDraggableElement(
        node: widget.node,
        index: widget.index + 1,
        onAdd: widget.onAdd,
        onAddBetween: widget.onAddBetween,
        onMove: widget.onMove,
        onNodeFocused: widget.onNodeFocused,
        onNodeHovered: widget.onNodeHovered,
        onNodeRemoved: widget.onNodeRemoved,
        onRightClick: widget.onRightClick,
      );
    }

    // If the node children are empty
    if (widget.node.children!.isEmpty) {
      return TreeListDraggableElement(
        node: widget.node,
        index: widget.index + 1,
        onAdd: widget.onAdd,
        onAddBetween: widget.onAddBetween,
        onMove: widget.onMove,
        onNodeFocused: widget.onNodeFocused,
        onNodeHovered: widget.onNodeHovered,
        onNodeRemoved: widget.onNodeRemoved,
        onRightClick: widget.onRightClick,
      );
    }

    return ExpandablePanel(
      controller: controller,
      theme: const ExpandableThemeData(hasIcon: false),
      header: TreeListDraggableElement(
        node: widget.node,
        index: widget.index + 1,
        controller: controller,
        onAdd: widget.onAdd,
        onAddBetween: widget.onAddBetween,
        onMove: widget.onMove,
        onNodeFocused: widget.onNodeFocused,
        onNodeHovered: widget.onNodeHovered,
        onNodeRemoved: widget.onNodeRemoved,
        onRightClick: widget.onRightClick,
      ),
      collapsed: const SizedBox.shrink(),
      expanded: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            for (final child in widget.node.children!.reversed)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TreeListDropBetweenNodesArea(
                    node: widget.node,
                    index: widget.node.children!.indexOf(child) - 1,
                    onMove: widget.onMove,
                    onAdd: widget.onAdd,
                  ),
                  TreeListElement(
                    node: child,
                    index:
                        widget.index + widget.node.children!.indexOf(child) + 1,
                    onAdd: widget.onAdd,
                    onAddBetween: widget.onAddBetween,
                    onMove: widget.onMove,
                    onNodeFocused: widget.onNodeFocused,
                    onNodeHovered: widget.onNodeHovered,
                    onNodeRemoved: widget.onNodeRemoved,
                    onRightClick: widget.onRightClick,
                  ),
                ],
              ),
            TreeListDropBetweenNodesArea(
              node: widget.node,
              index: widget.node.children!.length.toDouble(),
              onMove: widget.onMove,
              onAdd: widget.onAdd,
            ),
          ],
        ),
      ),
    );
  }
}
