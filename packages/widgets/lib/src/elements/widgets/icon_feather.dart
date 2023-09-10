import 'package:feather_icons/feather_icons.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Icon widget in Teta.
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
/// It returns a [Icon] widget.
class OpenWFeatherIcon extends Icon {
  /// Returns a Icon widget in Teta
  OpenWFeatherIcon({
    super.key,
    required final BuildContext context,
    required final String icon,
    required final FSize width,
    required final FFill fill,
  }) : super(
          FeatherIconsMap[icon],
          size: width.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
          color: fill.getColor(
            context.watch<TreeState>().colorStyles,
            context.watch<TreeState>().theme,
          ),
        );
}
