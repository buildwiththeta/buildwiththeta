import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// This widget doesn't work correctly.
/// Try to instantiate a Row and then as its children 2 Expanded.
/// They won't take all the space avaiable, as they are limited.

class OpenWDotsIndicator extends NodeWidget {
  /// Returns a DotsIndicator widget
  const OpenWDotsIndicator({
    super.key,
    required super.nodeState,
    required this.dotsCount,
    required this.position,
    required this.margins,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.border,
    required this.activeBorder,
    required this.color,
    required this.activeColor,
    required this.shadow,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput dotsCount;
  final FTextTypeInput position;
  final FBorderRadius borderRadius;
  final FBorder border;
  final FBorder activeBorder;
  final FMargins margins;
  final FShadow shadow;
  final FSize width;
  final FSize height;
  final FFill color;
  final FFill activeColor;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0;
            i <
                (int.tryParse(
                      dotsCount.get(
                        state: state,
                        context: context,
                        loop: nodeState.loop,
                      ),
                    ) ??
                    3);
            i++)
          Container(
            margin: margins.get(
              state: state,
              context: context,
            ),
            width: width.get(
              state: state,
              context: context,
              isWidth: true,
            ),
            height: height.get(
              state: state,
              context: context,
              isWidth: false,
            ),
            decoration: TetaBoxDecoration.get(
              state: state,
              context: context,
              fill: i ==
                      (int.tryParse(
                            position.get(
                              state: state,
                              context: context,
                              loop: nodeState.loop,
                            ),
                          ) ??
                          1)
                  ? color.get(context, state.colorStyles, state.theme)
                  : activeColor.get(context, state.colorStyles, state.theme),
              borderRadius: borderRadius,
              shadow: shadow,
            ),
          ),
      ],
    );
  }
}
