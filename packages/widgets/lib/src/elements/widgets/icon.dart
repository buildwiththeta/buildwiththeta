import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';

/// Returns a Icon widget in Teta.
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
class OpenWIcon extends Icon {
  /// Returns a Icon widget in Teta
  OpenWIcon({
    super.key,
    required final BuildContext context,
    required final WidgetState nodeState,
    required final String icon,
    required final FSize width,
    required final FFill fill,
  }) : super(
          overrider.executeIcon(context, nodeState, MdiIcons.fromString(icon)),
          size: width.get(
            forPlay: context.watch<TreeState>().forPlay,
            deviceType: context.watch<TreeState>().deviceType,
            deviceInfo: context.watch<TreeState>().deviceInfo,
            context: context,
            isWidth: true,
          ),
          color: overrider
              .executeColor(
                context,
                nodeState,
                fill,
              )
              .getColor(
                context
                    .watch<TreeState>()
                    .variables
                    .whereType<ColorVariableEntity>()
                    .toList(),
                context.watch<TreeState>().colorStyles,
                context.watch<TreeState>().theme,
              ),
        );

  static const overrider = NodeOverrideExecuter();
}
