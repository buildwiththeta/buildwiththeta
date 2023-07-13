import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class VisibilityControls extends StatefulWidget {
  const VisibilityControls({
    super.key,
    required this.node,
    required this.onVisibilityChanged,
  });

  final CNode node;
  final Function(
    bool visible,
    bool visibleOnMobile,
    bool visibleOnTablet,
    bool visibleOnLaptop,
    bool visibleOnDesktop,
  ) onVisibilityChanged;

  @override
  State<VisibilityControls> createState() => _VisibilityControlsState();
}

class _VisibilityControlsState extends State<VisibilityControls> {
  late bool visible;
  late bool visibleOnMobile;
  late bool visibleOnTablet;
  late bool visibleOnLaptop;
  late bool visibleOnDesktop;

  @override
  void initState() {
    super.initState();
    visible = widget.node.getAttributes[DBKeys.visibility] ?? true;
    visibleOnMobile = widget.node.getAttributes[DBKeys.visibleOnMobile] ?? true;
    visibleOnTablet = widget.node.getAttributes[DBKeys.visibleOnTablet] ?? true;
    visibleOnLaptop = widget.node.getAttributes[DBKeys.visibleOnLaptop] ?? true;
    visibleOnDesktop =
        widget.node.getAttributes[DBKeys.visibleOnDesktop] ?? true;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return ExpandableContainer(
      title: 'Visibility',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Visibility
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline3('Visibility'),
              CupertinoSwitch(
                value: visible,
                onChanged: (val) => setState(() {
                  visible = val;
                  widget.onVisibilityChanged(
                    visible,
                    visibleOnMobile,
                    visibleOnTablet,
                    visibleOnLaptop,
                    visibleOnDesktop,
                  );
                }),
              ),
            ],
          ),
          TDetailLabel(
            'Show/hide node and its children',
            color: theme.txtTertiary,
          ),
          const Gap(Grid.large),
          // Visible on mobile
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline3('Visible on mobile'),
              CupertinoSwitch(
                value: visibleOnMobile,
                onChanged: (val) => setState(() {
                  visibleOnMobile = val;
                  widget.onVisibilityChanged(
                    visible,
                    visibleOnMobile,
                    visibleOnTablet,
                    visibleOnLaptop,
                    visibleOnDesktop,
                  );
                }),
              ),
            ],
          ),
          TDetailLabel(
            'Choose if the node is visible on mobile devices',
            color: theme.txtTertiary,
          ),
          const Gap(Grid.large),
          // Visible on tablet
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline3('Visible on tablet'),
              CupertinoSwitch(
                value: visibleOnTablet,
                onChanged: (val) => setState(() {
                  visibleOnTablet = val;
                  widget.onVisibilityChanged(
                    visible,
                    visibleOnMobile,
                    visibleOnTablet,
                    visibleOnLaptop,
                    visibleOnDesktop,
                  );
                }),
              ),
            ],
          ),
          TDetailLabel(
            'Choose if the node is visible on tablet devices',
            color: theme.txtTertiary,
          ),
          const Gap(Grid.large),
          // Visible on laptop
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline3('Visible on laptop'),
              CupertinoSwitch(
                value: visibleOnLaptop,
                onChanged: (val) => setState(() {
                  visibleOnLaptop = val;
                  widget.onVisibilityChanged(
                    visible,
                    visibleOnMobile,
                    visibleOnTablet,
                    visibleOnLaptop,
                    visibleOnDesktop,
                  );
                }),
              ),
            ],
          ),
          TDetailLabel(
            'Choose if the node is visible on laptop devices',
            color: theme.txtTertiary,
          ),
          const Gap(Grid.large),
          // Visible on desktop
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const THeadline3('Visible on desktop'),
              CupertinoSwitch(
                value: visibleOnDesktop,
                onChanged: (val) => setState(() {
                  visibleOnDesktop = val;
                  widget.onVisibilityChanged(
                    visible,
                    visibleOnMobile,
                    visibleOnTablet,
                    visibleOnLaptop,
                    visibleOnDesktop,
                  );
                }),
              ),
            ],
          ),
          TDetailLabel(
            'Choose if the node is visible on desktop devices',
            color: theme.txtTertiary,
          ),
        ],
      ),
    );
  }
}
