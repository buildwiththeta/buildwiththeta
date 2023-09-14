// Flutter imports:
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Icon widget in Teta.
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
class OpenWLineIcon extends Icon {
  /// Returns a Icon widget in Teta
  OpenWLineIcon({
    super.key,
    required final BuildContext context,
    required final String icon,
    required final FSize width,
    required final FFill fill,
  }) : super(
          LineIcons.byName(icon),
          size: width.get(
            forPlay: context.watch<TreeState>().forPlay,
            deviceType: context.watch<TreeState>().deviceType,
            deviceInfo: context.watch<TreeState>().deviceInfo,
            context: context,
            isWidth: true,
          ),
          color: fill.getColor(
            context.watch<TreeState>().colorStyles,
            context.watch<TreeState>().theme,
          ),
        );
}
