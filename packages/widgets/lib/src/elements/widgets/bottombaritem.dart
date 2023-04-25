import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWBottomBarItem extends NodeWidget {
  /// Returns a Icon widget in Teta
  const OpenWBottomBarItem({
    super.key,
    required super.nodeState,
    required this.icon,
    required this.width,
    required this.fill,
    required this.textStyle,
    required this.isFullWidth,
    required this.value,
    required this.onTap,
    required this.onDoubleTap,
    required this.onLongPress,
  });

  final FSize? width;
  final String icon;
  final FFill fill;
  final FTextTypeInput value;
  final FTextStyle textStyle;
  final bool isFullWidth;
  final Function() onTap;
  final Function() onDoubleTap;
  final Function() onLongPress;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      onDoubleTap: () {
        onDoubleTap.call();
      },
      onLongPress: () {
        onLongPress.call();
      },
      child: Column(
        children: [
          Icon(
            MdiIcons.fromString(icon),
            color: HexColor(
                fill.getHexColor(context, state.colorStyles, state.theme)),
            size: width!.get(
              state: state,
              context: context,
              isWidth: true,
            ),
          ),
          TextBuilder(
            nodeState: nodeState,
            textStyle: textStyle,
            value: value,
          ),
        ],
      ),
    );
  }
}
