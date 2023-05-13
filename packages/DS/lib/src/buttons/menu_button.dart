import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ThetaDesignMenuButton extends StatefulWidget {
  const ThetaDesignMenuButton({
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
  State<ThetaDesignMenuButton> createState() => _ElementButtonState();
}

class _ElementButtonState extends State<ThetaDesignMenuButton> {
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
                      ? theme.buttonColor
                      : isHovered
                          ? theme.bgTertiary
                          : theme.bgPrimary,
                ),
                duration: const Duration(milliseconds: 10),
                curve: Curves.easeInOutCubic,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        if (widget.icon != null)
                          Icon(
                            widget.icon,
                            size: 20,
                            color: widget.isSelected
                                ? Colors.white
                                : theme.txtPrimary,
                          ),
                        if (widget.icon != null)
                          const SizedBox(width: Grid.medium),
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
                              ? Colors.white
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
