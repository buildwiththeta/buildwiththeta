import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/assets.dart';
import 'package:theta_design_system/theta_design_system.dart';

class BoxPositioningSectionControls extends StatelessWidget {
  const BoxPositioningSectionControls({
    super.key,
    required this.initialRectValue,
    required this.screenSize,
    required this.onRectChanged,
  });

  final Rect initialRectValue;
  final Size screenSize;
  final Function(Rect rect) onRectChanged;

  _handleLeftHorizontalAlignmentChanged() => onRectChanged(
        Rect.fromLTWH(
          0.0,
          initialRectValue.top,
          initialRectValue.width,
          initialRectValue.height,
        ),
      );

  _handleRightHorizontalAlignmentChanged() => onRectChanged(
        Rect.fromLTWH(
          screenSize.width - initialRectValue.width,
          initialRectValue.top,
          initialRectValue.width,
          initialRectValue.height,
        ),
      );

  _handleCenterHorizontalAlignmentChanged() => onRectChanged(
        Rect.fromLTWH(
          (screenSize.width - initialRectValue.width) / 2,
          initialRectValue.top,
          initialRectValue.width,
          initialRectValue.height,
        ),
      );

  _handleTopVerticalAlignmentChanged() => onRectChanged(
        Rect.fromLTWH(
          initialRectValue.left,
          0.0,
          initialRectValue.width,
          initialRectValue.height,
        ),
      );

  _handleCenterVerticalAlignmentChanged() => onRectChanged(
        Rect.fromLTWH(
          initialRectValue.left,
          (screenSize.height - initialRectValue.height) / 2,
          initialRectValue.width,
          initialRectValue.height,
        ),
      );

  _handleBottomVerticalAlignmentChanged() => onRectChanged(
        Rect.fromLTWH(
          initialRectValue.left,
          screenSize.height - initialRectValue.height,
          initialRectValue.width,
          initialRectValue.height,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _IconButton(
          icon: AppAssets.alignHorizontalLeft,
          label: 'Left',
          onTap: () => _handleLeftHorizontalAlignmentChanged(),
        ),
        const Gap(Grid.small),
        _IconButton(
          icon: AppAssets.alignHorizontalCenter,
          label: 'Horizontal Center',
          onTap: () => _handleCenterHorizontalAlignmentChanged(),
        ),
        const Gap(Grid.small),
        _IconButton(
          icon: AppAssets.alignHorizontalRight,
          label: 'Right',
          onTap: () => _handleRightHorizontalAlignmentChanged(),
        ),
        const Gap(Grid.small),
        _IconButton(
          icon: AppAssets.alignVerticalTop,
          label: 'Top',
          onTap: () => _handleTopVerticalAlignmentChanged(),
        ),
        const Gap(Grid.small),
        _IconButton(
          icon: AppAssets.alignVerticalCenter,
          label: 'Vertical Center',
          onTap: () => _handleCenterVerticalAlignmentChanged(),
        ),
        const Gap(Grid.small),
        _IconButton(
          icon: AppAssets.alignVerticalBottom,
          label: 'Bottom',
          onTap: () => _handleBottomVerticalAlignmentChanged(),
        ),
      ],
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final String icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return BounceForSmallWidgets(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        width: 20,
        height: 20,
        color: theme.txtPrimary,
      ),
    );
  }
}
