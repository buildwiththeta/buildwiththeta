import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a Opacity widget
/// It requires a [value] as input
/// It takes a [child] of type [CNode] as child
class OpenWOpacity extends Opacity {
  /// Returns a Opacity widget
  OpenWOpacity({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput value,
    final CNode? child,
  }) : super(
          opacity: double.tryParse(
                value.get(
                  state: context.watch<TreeState>(),
                  loop: state.loop,
                  context: context,
                ),
              )?.clamp(0, 1) ??
              1,
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
