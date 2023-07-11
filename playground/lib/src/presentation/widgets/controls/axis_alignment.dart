import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/assets.dart';
import '../expandable_container.dart';
import '../selection_tab.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import 'cross_axis_alignment_preview.dart';
import 'main_axis_alignment_preview.dart';

class AxisControls extends StatefulWidget {
  const AxisControls({
    super.key,
    required this.node,
    required this.onAxisAlignmentChanged,
  });

  final CNode node;
  final Function(
    FMainAxisAlignment mainAxisAlignment,
    FCrossAxisAlignment crossAxisAlignment,
    FMainAxisSize mainAxisSize,
  ) onAxisAlignmentChanged;

  @override
  State<AxisControls> createState() => _AxisControlsState();
}

class _AxisControlsState extends State<AxisControls> {
  late FMainAxisAlignment mainAxisAlignment;
  late FCrossAxisAlignment crossAxisAlignment;
  late FMainAxisSize mainAxisSize;

  @override
  void initState() {
    super.initState();
    mainAxisAlignment = widget.node.getAttributes[DBKeys.mainAxisAlignment] ??
        const FMainAxisAlignment(value: MainAxisAlignment.start);
    crossAxisAlignment = widget.node.getAttributes[DBKeys.crossAxisAlignment] ??
        const FCrossAxisAlignment(value: CrossAxisAlignment.start);
    mainAxisSize = widget.node.getAttributes[DBKeys.mainAxisSize] ??
        const FMainAxisSize(value: MainAxisSize.max);
  }

  void updateAxis() {
    widget.onAxisAlignmentChanged(
      mainAxisAlignment,
      crossAxisAlignment,
      mainAxisSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Axis',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const THeadline3('Main Axis Alignment'),
          const Gap(Grid.medium),
          MainAxisAlignmentPreview(
            node: widget.node,
            mainAxisAlignment: mainAxisAlignment.value,
          ),
          const Gap(Grid.medium),
          Row(
            children: [
              SelectionTab(
                isSelected: mainAxisAlignment.value == MainAxisAlignment.start,
                onTap: () {
                  setState(() {
                    mainAxisAlignment = const FMainAxisAlignment(
                      value: MainAxisAlignment.start,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.startAlignment,
              ),
              SelectionTab(
                isSelected: mainAxisAlignment.value == MainAxisAlignment.center,
                onTap: () {
                  setState(() {
                    mainAxisAlignment = const FMainAxisAlignment(
                      value: MainAxisAlignment.center,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.centerAlignment,
              ),
              SelectionTab(
                isSelected: mainAxisAlignment.value == MainAxisAlignment.end,
                onTap: () {
                  setState(() {
                    mainAxisAlignment = const FMainAxisAlignment(
                      value: MainAxisAlignment.end,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.endAlignment,
              ),
              SelectionTab(
                isSelected:
                    mainAxisAlignment.value == MainAxisAlignment.spaceAround,
                onTap: () {
                  setState(() {
                    mainAxisAlignment = const FMainAxisAlignment(
                      value: MainAxisAlignment.spaceAround,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.spaceAroundAlignment,
              ),
              SelectionTab(
                isSelected:
                    mainAxisAlignment.value == MainAxisAlignment.spaceBetween,
                onTap: () {
                  setState(() {
                    mainAxisAlignment = const FMainAxisAlignment(
                      value: MainAxisAlignment.spaceBetween,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.spaceBetweenAlignment,
              ),
            ],
          ),
          const Gap(Grid.medium),
          const THeadline3('Cross Axis Alignment'),
          const Gap(Grid.medium),
          CrossAxisAlignmentPreview(
            node: widget.node,
            crossAxisAlignment: crossAxisAlignment.value,
          ),
          const Gap(Grid.medium),
          Row(
            children: [
              SelectionTab(
                isSelected:
                    crossAxisAlignment.value == CrossAxisAlignment.start,
                onTap: () {
                  setState(() {
                    crossAxisAlignment = const FCrossAxisAlignment(
                      value: CrossAxisAlignment.start,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.startAlignment,
              ),
              SelectionTab(
                isSelected:
                    crossAxisAlignment.value == CrossAxisAlignment.center,
                onTap: () {
                  setState(() {
                    crossAxisAlignment = const FCrossAxisAlignment(
                      value: CrossAxisAlignment.center,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.centerAlignment,
              ),
              SelectionTab(
                isSelected: crossAxisAlignment.value == CrossAxisAlignment.end,
                onTap: () {
                  setState(() {
                    crossAxisAlignment = const FCrossAxisAlignment(
                      value: CrossAxisAlignment.end,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.endAlignment,
              ),
              SelectionTab(
                isSelected:
                    crossAxisAlignment.value == CrossAxisAlignment.stretch,
                onTap: () {
                  setState(() {
                    crossAxisAlignment = const FCrossAxisAlignment(
                      value: CrossAxisAlignment.stretch,
                    );

                    updateAxis();
                  });
                },
                assetIcon: AppAssets.stretchAlignment,
              ),
            ],
          ),
          const Gap(Grid.medium),
          const THeadline3('Main Axis Size'),
          const Gap(Grid.medium),
          ThetaDesignDropdownCustom<MainAxisSize>(
            value: mainAxisSize.value,
            expanded: true,
            items: const [
              DropdownCustomMenuItem(
                value: MainAxisSize.min,
                child: TParagraph('min'),
              ),
              DropdownCustomMenuItem(
                value: MainAxisSize.max,
                child: TParagraph('max'),
              ),
            ],
            onChange: (value) {
              if (value == null) return;
              mainAxisSize = FMainAxisSize(value: value);
              updateAxis();
            },
          ),
        ],
      ),
    );
  }
}
