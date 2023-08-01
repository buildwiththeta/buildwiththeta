import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../../core/capitalize_string_extension.dart';
import '../../../../../widgets/node_icon.dart';

class WidgetElement extends StatefulWidget {
  const WidgetElement({
    super.key,
    required this.node,
  });

  final CNode node;

  @override
  State<WidgetElement> createState() => _WidgetElementState();
}

class _WidgetElementState extends State<WidgetElement> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Draggable(
      data: DragTargetSingleNodeModel(widget.node),
      feedback: Material(
        color: theme.bgPrimary30,
        child: Opacity(
          opacity: 0.5,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 4, vertical: Grid.small),
            decoration: BoxDecoration(
              color: isHovered
                  ? theme.buttonColor.withOpacity(0.1)
                  : Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                NodeIconWidget(
                  size: 24,
                  node: widget.node,
                  color: Palette.blue,
                ),
                const Gap(Grid.small),
                TDetailLabel(
                  widget.node.type == NType.component
                      ? widget.node.name.toString()
                      : widget.node.intrinsicState.type == NType.icon
                          ? 'Icon'
                          : widget.node.intrinsicState.displayName.capitalize(),
                  isCentered: true,
                ),
              ],
            ),
          ),
        ),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.grab,
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: Grid.small),
          decoration: BoxDecoration(
            color: isHovered
                ? theme.buttonColor.withOpacity(0.1)
                : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              NodeIconWidget(
                size: 24,
                node: widget.node,
                color: Palette.blue,
              ),
              const Gap(Grid.small),
              TDetailLabel(
                widget.node.type == NType.component
                    ? widget.node.name.toString()
                    : widget.node.intrinsicState.type == NType.icon
                        ? 'Icon'
                        : widget.node.intrinsicState.displayName.capitalize(),
                isCentered: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
