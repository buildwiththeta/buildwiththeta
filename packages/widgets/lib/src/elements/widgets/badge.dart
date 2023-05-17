import 'package:flutter/material.dart' hide Badge;
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWBadge extends NodeWidget {
  /// Returns a [Badge] widget in Teta
  const OpenWBadge({
    super.key,
    required super.nodeState,
    required this.value,
    required this.textStyle,
    required this.fill,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput value;
  final FTextStyle textStyle;
  final FFill fill;

  @override
  Widget build(
    final BuildContext context,
    final TreeState state,
    final WidgetState nodeState,
  ) {
    return const SizedBox
        .shrink(); /*Badge(
      badgeContent: TextBuilder(
        textStyle: textStyle,
        value: value,
        nodeState: nodeState,
      ),
      badgeColor: HexColor(
        fill.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        ),
      ),
      child: ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      ),
    );*/
  }
}
