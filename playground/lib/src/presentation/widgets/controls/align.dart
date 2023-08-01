import 'package:flutter/material.dart';
import '../expandable_container.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class AlignControls extends StatefulWidget {
  const AlignControls({
    super.key,
    required this.node,
    required this.onAlignChanged,
  });

  final CNode node;
  final Function(FAlign align) onAlignChanged;

  @override
  State<AlignControls> createState() => _AlignControlsState();
}

class _AlignControlsState extends State<AlignControls> {
  late FAlign nodeAlign;

  @override
  void initState() {
    super.initState();
    nodeAlign =
        widget.node.getAttributes[DBKeys.align] as FAlign? ?? const FAlign();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Alignment',
      child: ThetaDesignDropdownCustom<Alignment>(
        value: nodeAlign.align,
        expanded: true,
        items: const [
          DropdownCustomMenuItem(
            value: Alignment.topLeft,
            child: TParagraph('Top Left'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.topCenter,
            child: TParagraph('Top Center'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.topRight,
            child: TParagraph('Top Right'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.centerLeft,
            child: TParagraph('Center Left'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.center,
            child: TParagraph('Center'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.centerRight,
            child: TParagraph('Center Right'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.bottomLeft,
            child: TParagraph('Bottom Left'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.bottomCenter,
            child: TParagraph('Bottom Center'),
          ),
          DropdownCustomMenuItem(
            value: Alignment.bottomRight,
            child: TParagraph('Bottom Right'),
          ),
        ],
        onChange: (value) {
          setState(() {
            nodeAlign = nodeAlign.copyWith(align: value as Alignment);
            widget.onAlignChanged(nodeAlign);
          });
        },
      ),
    );
  }
}
