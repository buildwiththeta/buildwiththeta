import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaDesignElementButton extends StatefulWidget {
  const ThetaDesignElementButton({
    final Key? key,
    required this.title,
    required this.isSelected,
    this.onTap,
    this.onDoubleTap,
    this.subtitle,
    this.icon,
    this.tooltip,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final String? subtitle;
  final IconData? icon;
  final String? tooltip;
  final Function()? onTap;
  final Function()? onDoubleTap;

  @override
  State<ThetaDesignElementButton> createState() => _ElementButtonState();
}

class _ElementButtonState extends State<ThetaDesignElementButton> {
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
                  left: 8,
                  top: 4,
                  right: 8,
                  bottom: 4,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.icon != null)
                          Icon(
                            widget.icon,
                            size: 16,
                            color: widget.isSelected
                                ? Colors.white
                                : theme.txtPrimary,
                          ),
                        if (widget.icon != null) const SizedBox(width: 8),
                        Expanded(
                          flex: 5,
                          child: TDetailLabel(
                            widget.title,
                            color: widget.isSelected
                                ? Colors.white
                                : theme.txtPrimary,
                          ),
                        ),
                      ],
                    ),
                    if (widget.subtitle != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: TDetailLabel(
                          widget.subtitle!,
                          color: widget.isSelected
                              ? Colors.white.withOpacity(0.6)
                              : theme.txtPrimary.withOpacity(0.6),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
