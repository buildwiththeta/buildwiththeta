import 'package:flutter/material.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Icon widget in Teta
/// It wants a [BuildContext] and a [WidgetState] to get the [FSize] and [FFill] values.
class OpenWFontAwesome extends Icon {
  /// Returns a Icon widget in Teta
  OpenWFontAwesome({
    super.key,
    required final BuildContext context,
    required final String icon,
    required final FSize width,
    required final FFill fill,
  }) : super(
          faIconNameMapping[icon],
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
