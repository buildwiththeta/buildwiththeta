import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/assets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class VisibilityCompactControls extends StatefulWidget {
  const VisibilityCompactControls({
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
  State<VisibilityCompactControls> createState() => _VisibilityControlsState();
}

class _VisibilityControlsState extends State<VisibilityCompactControls> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const THeadline2('Visibility'),
        const Gap(Grid.medium),
        // Visibility
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: theme.bgSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _DeviceIcon(
                asset: AppAssets.iPadAndIPhone,
              ),
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
        ),
        const Gap(Grid.small),
        // Visible on mobile
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: theme.bgSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _DeviceIcon(
                asset: AppAssets.iPhone,
              ),
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
        ),
        const Gap(Grid.small),
        // Visible on tablet
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: theme.bgSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _DeviceIcon(
                asset: AppAssets.iPad,
              ),
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
        ),
        const Gap(Grid.small),
        // Visible on laptop
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: theme.bgSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 44,
                height: 44,
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.laptop,
                    width: 16,
                    height: 16,
                    color: theme.txtPrimary,
                  ),
                ),
              ),
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
        ),
        const Gap(Grid.small),
        // Visible on desktop
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: theme.bgSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _DeviceIcon(
                asset: AppAssets.display,
              ),
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
        ),
      ],
    );
  }
}

class _DeviceIcon extends StatelessWidget {
  const _DeviceIcon({required this.asset});
  final String asset;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return SizedBox(
      width: 44,
      height: 44,
      child: Center(
        child: SvgPicture.asset(
          asset,
          width: 20,
          height: 20,
          color: theme.txtPrimary,
        ),
      ),
    );
  }
}
