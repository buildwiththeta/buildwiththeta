import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';
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
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
          color: HexColor(
            fill.getHexColor(
              context,
              context.watch<TreeState>().colorStyles,
              context.watch<TreeState>().theme,
            ),
          ),
        );
}
