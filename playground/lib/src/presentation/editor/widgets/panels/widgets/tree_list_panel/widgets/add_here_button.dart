import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../sizes.dart';

class TreeListAddHereButton extends StatefulWidget {
  const TreeListAddHereButton(
    this.node,
    this.index, {
    super.key,
    required this.onMove,
    required this.onAdd,
  });

  final CNode node;
  final double index;
  final Function(
          DragTargetMoveSingleNodeModel event, CNode newParent, double index)
      onMove;
  final Function(CNode newNode, CNode parent) onAdd;

  @override
  State<TreeListAddHereButton> createState() => _AddHereState();
}

class _AddHereState extends State<TreeListAddHereButton> {
  bool isActive = false;
  bool isLoading = false;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return DragTarget<DragTargetModel>(
      onWillAccept: (final details) {
        if (mounted) {
          setState(() {
            isActive = true;
          });
        }
        return true;
      },
      onLeave: (final details) {
        if (mounted) {
          setState(() {
            isActive = false;
          });
        }
      },
      onMove: (final details) {
        if (mounted) {
          setState(() {
            isActive = true;
          });
        }
      },
      onAccept: (final target) async {
        setState(() {
          isLoading = true;
        });
        if (target is DragTargetMoveSingleNodeModel) {
          widget.onMove.call(target, widget.node, widget.index);
        }
        if (target is DragTargetSingleNodeModel) {
          widget.onAdd.call(target.node, widget.node);
        }
        setState(() {
          isActive = false;
          isLoading = false;
        });
      },
      builder: (final context, final candidateData, final rejectedData) {
        return HoverWidget(
          hoverChild: Container(
            padding: EI.smH,
            height: PanelsElementSizes.elementsHeight,
            decoration: BoxDecoration(
              color:
                  isActive ? Palette.blue.withOpacity(0.1) : theme.bgSecondary,
              borderRadius: const BorderRadius.all(
                Radius.circular(Grid.small),
              ),
            ),
            child: _Label(
              node: widget.node,
              index: widget.index,
            ),
          ),
          child: Container(
            padding: EI.smH,
            height: PanelsElementSizes.elementsHeight,
            child: _Label(
              node: widget.node,
              index: widget.index,
            ),
          ),
        );
      },
    );
  }
}

class _Label extends StatelessWidget {
  const _Label({
    required this.node,
    required this.index,
  });

  final CNode node;
  final double index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Row(
      children: [
        Icon(
          CupertinoIcons.add,
          size: 16,
          color: theme.txtPrimary60,
        ),
        const Gap(4),
        TDetailLabel(
          'Drop in ${node.intrinsicState.displayName}',
          color: theme.txtPrimary60,
        ),
      ],
    );
  }
}
