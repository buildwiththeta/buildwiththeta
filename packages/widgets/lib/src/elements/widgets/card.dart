import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCard extends NodeWidget {
  /// Returns a [Center] widget in Teta
  const OpenWCard({
    super.key,
    required super.nodeState,
    required this.elevation,
    required this.color,
    required this.borderRadius,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput elevation;
  final FBorderRadius borderRadius;
  final FFill color;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final val = elevation.get(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
    return Card(
      color:
          HexColor(color.getHexColor(context, state.colorStyles, state.theme)),
      elevation: double.tryParse(val) != null ? double.parse(val) : 1,
      shape: TetaShapeCard.get(
        context: context,
        state: state,
        borderRadius: borderRadius,
      ),
      child: ChildBuilder(
        context: context,
        state: nodeState,
        child: child,
      ),
    );
  }
}
