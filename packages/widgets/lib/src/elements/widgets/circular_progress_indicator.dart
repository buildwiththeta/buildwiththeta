import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWCircularProgressIndicator extends NodeWidget {
  /// Returns a [Center] widget in Teta
  const OpenWCircularProgressIndicator({
    super.key,
    required super.nodeState,
    required this.fill,
  });

  final FFill fill;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(HexColor(fill.getHexColor(
        context,
        state.colorStyles,
        state.theme,
      ))),
    );
  }
}
