import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaDesignElementButtonIcon extends StatefulWidget {
  const ThetaDesignElementButtonIcon(
    this.icon, {
    final Key? key,
    required this.isSelected,
    this.onTap,
    this.onDoubleTap,
    this.tooltip,
  }) : super(key: key);

  final bool isSelected;
  final IconData icon;
  final String? tooltip;
  final Function()? onTap;
  final Function()? onDoubleTap;

  @override
  State<ThetaDesignElementButtonIcon> createState() =>
      _ThetaElementButtonState();
}

class _ThetaElementButtonState extends State<ThetaDesignElementButtonIcon> {
  bool isHovered = false;

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return RepaintBoundary(
      child: Semantics(
        button: true,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: BounceForLargeWidgets(
            message: widget.tooltip,
            child: GestureDetector(
              onTap: () {
                widget.onTap?.call();
              },
              onDoubleTap: () {
                widget.onDoubleTap?.call();
              },
              child: AnimatedContainer(
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 10,
                  right: 8,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(Grid.small)),
                  color:
                      widget.isSelected ? theme.buttonColor : theme.bgTertiary,
                  border: Border.all(
                    color: theme.txtPrimary,
                    style: isHovered ? BorderStyle.solid : BorderStyle.none,
                  ),
                ),
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOutCubic,
                child: Icon(
                  widget.icon,
                  size: 16,
                  color: theme.txtPrimary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
