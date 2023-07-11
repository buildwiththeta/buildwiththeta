import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';
import '../spacing_input_field.dart';

class SpacingControls extends StatefulWidget {
  const SpacingControls({
    super.key,
    required this.node,
    required this.onSpacingChanged,
  });

  final CNode node;
  final Function(
    SpacingType type,
    double top,
    double right,
    double bottom,
    double left,
  ) onSpacingChanged;

  @override
  State<SpacingControls> createState() => _SpacingSectionStateControls();
}

class _SpacingSectionStateControls extends State<SpacingControls> {
  late FMargins margins;
  late FMargins padding;

  @override
  void initState() {
    super.initState();
    margins = widget.node.getAttributes[DBKeys.margins] as FMargins;
    padding = widget.node.getAttributes[DBKeys.padding] as FMargins;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Spacing',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpacingInputField(
            type: SpacingType.margin,
            topOrTopLeft: margins.margins?[0] ?? 0,
            bottomOrTopRight: margins.margins?[1] ?? 0,
            rightOrBottomRight: margins.margins?[2] ?? 0,
            leftOrBottomLeft: margins.margins?[3] ?? 0,
            onSpacingChanged: (top, bottom, right, left) {
              widget.onSpacingChanged(
                SpacingType.margin,
                top,
                bottom,
                right,
                left,
              );
            },
          ),
          const Gap(Grid.large),
          SpacingInputField(
            type: SpacingType.padding,
            topOrTopLeft: padding.margins?[0] ?? 0,
            bottomOrTopRight: padding.margins?[1] ?? 0,
            rightOrBottomRight: padding.margins?[2] ?? 0,
            leftOrBottomLeft: padding.margins?[3] ?? 0,
            onSpacingChanged: (top, bottom, right, left) {
              widget.onSpacingChanged(
                SpacingType.padding,
                top,
                bottom,
                right,
                left,
              );
            },
          ),
        ],
      ),
    );
  }
}
