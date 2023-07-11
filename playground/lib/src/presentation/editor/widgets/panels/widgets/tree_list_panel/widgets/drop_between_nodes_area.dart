import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class TreeListDropBetweenNodesArea extends StatefulWidget {
  const TreeListDropBetweenNodesArea({
    super.key,
    required this.node,
    required this.index,
    required this.onMove,
    required this.onAdd,
  });

  final CNode node;
  final int index;
  final Function(
      DragTargetMoveSingleNodeModel event, CNode newParent, int index) onMove;
  final Function(CNode newNode, CNode parent) onAdd;

  @override
  State<TreeListDropBetweenNodesArea> createState() =>
      _DropBetweenNodesAreaState();
}

class _DropBetweenNodesAreaState extends State<TreeListDropBetweenNodesArea> {
  bool isActive = false;

  void setActive(bool v) => setState(() {
        isActive = v;
      });

  @override
  Widget build(final BuildContext context) {
    return DragTarget<DragTargetModel>(
      onLeave: (final e) {
        setActive(false);
      },
      onWillAccept: (final e) {
        setActive(true);
        return true;
      },
      onAccept: (final e) async {
        if (e is DragTargetMoveSingleNodeModel) {
          widget.onMove.call(e, widget.node, widget.index);
        } else if (e is DragTargetSingleNodeModel) {
          widget.onAdd.call(e.node, widget.node);
        }
        setActive(true);
      },
      builder: (
        final context,
        final candidateData,
        final rejectedData,
      ) {
        if (widget.node.children!.length != 1) {
          return Container(
            width: double.maxFinite,
            height: 2,
            decoration: BoxDecoration(
              color: isActive ? Palette.blue : null,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
