import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:theta_models/theta_models.dart';

class OpenWDivider extends StyledDivider {
  /// Returns a Divider widget in Theta
  OpenWDivider({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FSize thickness,
    required final FSize indent,
    required final FSize endIndent,
    required final FFill fill,
    required final FDividerLineStyle lineStyle,
  }) : super(
          color: HexColor(
            fill.getHexColor(
              context,
              context.watch<TreeState>().colorStyles,
              context.watch<TreeState>().theme,
            ),
          ),
          thickness: thickness.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: false,
          ),
          indent: indent.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
          endIndent: endIndent.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
          lineStyle: lineStyle.value,
        );
}
