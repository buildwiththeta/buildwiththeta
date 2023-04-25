import 'package:feather_icons/feather_icons.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
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
            state: TreeGlobalState.state,
            context: context,
            isWidth: true,
          ),
          color: HexColor(
            fill.getHexColor(
              context,
              TreeGlobalState.state.colorStyles,
              TreeGlobalState.state.theme,
            ),
          ),
        );
}
