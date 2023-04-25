import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWDivider extends Divider {
  /// Returns a Divider widget
  OpenWDivider({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FSize height,
    required final FFill fill,
    final CNode? child,
  }) : super(
          height: height.get(
            context: context,
            isWidth: false,
            state: TreeGlobalState.state,
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
