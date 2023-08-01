import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

class EditorLeftBarMenuItem extends StatefulWidget {
  const EditorLeftBarMenuItem({
    super.key,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onSelected,
  });

  final String label;
  final IconData icon;
  final bool isSelected;
  final Function() onSelected;

  @override
  State<EditorLeftBarMenuItem> createState() => _EditorLeftBarMenuItemState();
}

class _EditorLeftBarMenuItemState extends State<EditorLeftBarMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return BounceForLargeWidgets(
      onTap: () => widget.onSelected.call(),
      child: MouseRegion(
        onEnter: (e) => setState(() => isHovered = true),
        onExit: (e) => setState(() => isHovered = false),
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: Grid.small),
          decoration: BoxDecoration(
            color: widget.isSelected
                ? theme.buttonColor.withOpacity(0.1)
                : isHovered
                    ? theme.txtPrimary.withOpacity(0.02)
                    : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
          ),
          child: Column(
            children: [
              Icon(
                widget.icon,
                size: 20,
                color: widget.isSelected || isHovered
                    ? theme.buttonColor
                    : theme.txtPrimary,
              ),
              const Gap(4),
              CText(
                widget.label,
                color: widget.isSelected || isHovered
                    ? theme.buttonColor
                    : theme.txtPrimary,
                typography: const TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
