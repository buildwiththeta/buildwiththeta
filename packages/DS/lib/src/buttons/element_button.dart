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
                  color: widget.isSelected
                      ? Palette.buttonColor
                      : Palette.bgTertiary,
                  border: Border.all(
                    color: Palette.txtPrimary,
                    style: isHovered ? BorderStyle.solid : BorderStyle.none,
                  ),
                ),
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOutCubic,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (widget.icon != null)
                          Icon(
                            widget.icon,
                            size: 16,
                            color: Palette.txtPrimary,
                          ),
                        if (widget.icon != null)
                          const SizedBox(width: Grid.medium),
                        Expanded(
                          flex: 5,
                          child: TDetailLabel(
                            widget.title,
                            color: Palette.txtPrimary,
                          ),
                        ),
                      ],
                    ),
                    if (widget.subtitle != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: TDetailLabel(
                          widget.subtitle!,
                          color: Palette.txtPrimary.withOpacity(0.6),
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
