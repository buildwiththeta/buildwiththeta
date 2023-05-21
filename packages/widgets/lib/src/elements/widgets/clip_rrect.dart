import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// Returns a [WClipRRect] widget in Theta
class OpenWClipRRect extends SingleChildRenderObjectWidget {
  /// Creates a rounded-rectangular clip.
  OpenWClipRRect({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
    required this.borderRadius,
    this.clipper,
    this.clipBehavior = Clip.hardEdge,
  }) : super(
          child: ChildBuilder(context: context, state: state, child: child),
        );

  /// The radius for each corner.
  final FBorderRadius borderRadius;

  /// An optional custom clipper.
  final CustomClipper<RRect>? clipper;

  /// How to clip the content.
  /// Defaults to [Clip.hardEdge].
  final Clip clipBehavior;

  @override
  RenderClipRRect createRenderObject(BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    return RenderClipRRect(
      borderRadius: borderRadius.get(
        context,
        forPlay: state.forPlay,
        deviceType: state.deviceType,
      ),
      clipper: clipper,
      clipBehavior: clipBehavior,
      textDirection: Directionality.maybeOf(context),
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderClipRRect renderObject) {
    final TreeState state = context.watch<TreeState>();
    renderObject
      ..borderRadius = borderRadius.get(
        context,
        forPlay: state.forPlay,
        deviceType: state.deviceType,
      )
      ..clipBehavior = clipBehavior
      ..clipper = clipper
      ..textDirection = Directionality.maybeOf(context);
  }
}
