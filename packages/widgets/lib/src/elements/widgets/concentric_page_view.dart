// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:concentric_transition/concentric_transition.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWConcentricPageView extends NodeWidget {
  /// Returns a PageViewwidget
  const OpenWConcentricPageView({
    super.key,
    required super.nodeState,
    required this.children,
    required this.fill,
  });

  final List<CNode> children;
  final FFill fill;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final state = TreeGlobalState.state;
    return ConcentricPageView(
      colors: [
        HexColor(
          fill.getHexColor(context, state.colorStyles, state.theme),
        ),
      ],
      itemCount: children.length,
      itemBuilder: (final int index) {
        return children[index].toWidget(context: context, state: nodeState);
      },
    );
  }
}
