import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Positioned widget in Teta
/// [margins] is a margin of the widget
/// [left] is a boolean value, if it is true, the [margins] is applied to the left side of the widget
/// [top] is a boolean value, if it is true, the [margins] is applied to the top side of the widget
/// [right] is a boolean value, if it is true, the [margins] is applied to the right side of the widget
/// [bottom] is a boolean value, if it is true, the [margins] is applied to the bottom side of the widget
/// [child] is a child widget
class OpenWPositioned extends Positioned {
  /// Returns a Positioned widget in Teta
  OpenWPositioned({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FMargins margins,
    required final bool left,
    required final bool top,
    required final bool right,
    required final bool bottom,
    final CNode? child,
  }) : super(
          /// Get the margin from the [margins] and apply it to the [left], [top], [right], [bottom] sides of the widget
          top: top
              ? margins
                  .get(
                    context: context,
                    state: context.watch<TreeState>(),
                  )
                  .top
              : null,
          bottom: bottom
              ? margins
                  .get(
                    context: context,
                    state: context.watch<TreeState>(),
                  )
                  .bottom
              : null,
          left: left
              ? margins
                  .get(
                    context: context,
                    state: context.watch<TreeState>(),
                  )
                  .left
              : null,
          right: right
              ? margins
                  .get(
                    context: context,
                    state: context.watch<TreeState>(),
                  )
                  .right
              : null,
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
