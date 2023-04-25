// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCupertinoAppBar extends CupertinoNavigationBar {
  /// Returns a CupertinoNavigationBar widget in Teta
  OpenWCupertinoAppBar({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FFill fill,
    required final List<CNode> children,
  }) : super(
          backgroundColor: HexColor(
            fill.getHexColor(
              context,
              TreeGlobalState.state.colorStyles,
              TreeGlobalState.state.theme,
            ),
          ),
          leading: children.isNotEmpty
              ? children[0].toWidget(
                  context: context, state: state.copyWith(node: children[0]))
              : null,
          middle: children.length >= 2
              ? children[1].toWidget(
                  context: context, state: state.copyWith(node: children[1]))
              : null,
          trailing: children.length >= 3
              ? children[2].toWidget(
                  context: context, state: state.copyWith(node: children[2]))
              : null,
        );
}
