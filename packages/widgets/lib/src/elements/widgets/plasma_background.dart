import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:sa3_liquid/liquid/plasma/plasma.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_design_system/theta_design_system.dart';

class OpenWPlasmaBackground extends NodeWidget {
  const OpenWPlasmaBackground({
    super.key,
    required super.nodeState,
    required this.width,
    required this.height,
    required this.firstColor,
    required this.secondColor,
    this.child,
  });

  final CNode? child;
  final FSize width;
  final FSize height;
  final FFill firstColor;
  final FFill secondColor;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return SizedBox(
      width: width.get(
        state: state,
        context: context,
        isWidth: true,
      ),
      height: height.get(
        context: context,
        isWidth: false,
        state: state,
      ),
      child: PlasmaRenderer(
        fps: 50,
        color: HexColor(
            firstColor.getHexColor(context, state.colorStyles, state.theme)),
        blur: 0.36,
        size: 1.33,
        speed: 5.75,
        child: PlasmaRenderer(
          fps: 50,
          color: HexColor(
              secondColor.getHexColor(context, state.colorStyles, state.theme)),
          blur: 0.79,
          size: 0.87,
          offset: 2,
          blendMode: BlendMode.overlay,
          child: ChildBuilder(
            context: context,
            state: nodeState,
            child: child,
          ),
        ),
      ),
    );
  }
}
