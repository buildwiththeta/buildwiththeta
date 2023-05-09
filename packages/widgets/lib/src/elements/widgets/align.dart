// ignore_for_file: public_member_api_docs
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

class OpenWAlign extends Align {
  /// Returns a [Align] widget in Teta
  OpenWAlign({
    Key? key,
    required final BuildContext context,
    required this.nodeState,
    required this.align,
    required final CNode? child,
  }) : super(
          key: key,
          child: ChildBuilder(context: context, state: nodeState, child: child),
        );

  final WidgetState nodeState;
  final FAlign align;

  @override
  RenderPositionedBox createRenderObject(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final alignment = align.get(
      context,
      forPlay: state.forPlay,
    );
    return RenderPositionedBox(
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      textDirection: Directionality.maybeOf(context),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderPositionedBox renderObject) {
    renderObject
      ..alignment = alignment
      ..widthFactor = widthFactor
      ..heightFactor = heightFactor
      ..textDirection = Directionality.maybeOf(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<AlignmentGeometry>('alignment', alignment));
    properties
        .add(DoubleProperty('widthFactor', widthFactor, defaultValue: null));
    properties
        .add(DoubleProperty('heightFactor', heightFactor, defaultValue: null));
  }
}
