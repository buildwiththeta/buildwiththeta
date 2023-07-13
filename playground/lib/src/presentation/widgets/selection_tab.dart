import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class SelectionTab extends StatelessWidget {
  const SelectionTab({
    super.key,
    required this.isSelected,
    required this.onTap,
    this.icon,
    this.assetIcon,
  }) : assert(
          icon != null || assetIcon != null,
          'Either icon or assetIcon must be provided',
        );

  final bool isSelected;
  final VoidCallback onTap;
  final IconData? icon;
  final String? assetIcon;

  @override
  Widget build(final BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: HoverWidget(
          hoverChild: body(context, isHovered: !isSelected),
          child: body(context, isHovered: false),
        ),
      ),
    );
  }

  Widget body(BuildContext context, {required final bool isHovered}) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Container(
      margin: const EdgeInsets.only(right: 4),
      height: 40,
      decoration: BoxDecoration(
        color: isSelected ? Palette.blue : theme.bgGreyLight,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          style: isHovered ? BorderStyle.solid : BorderStyle.none,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: assetIcon != null
            ? Image.asset(
                assetIcon!,
                height: 24,
              )
            : Icon(
                icon,
                size: 20,
                color: isSelected ? Colors.white : theme.txtPrimary,
              ),
      ),
    );
  }
}
