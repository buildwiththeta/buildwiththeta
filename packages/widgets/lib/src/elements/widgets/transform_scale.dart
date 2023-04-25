import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a [WTransformScale] widget in Teta
class OpenWTransformScale extends Transform {
  /// Returns a Transform.scale widget in Teta
  OpenWTransformScale({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput value,
    required final CNode? child,
  }) : super(
          transform: Matrix4.identity()

            /// Set the entry to 1
            ..setEntry(1, 1, 1)

            /// Scale the child
            ..scale(
              /// Get the value from the state and convert it to a double
              double.tryParse(
                    value.get(
                      state: TreeGlobalState.state,
                      loop: state.loop,
                      context: context,
                    ),
                  ) ??

                  /// If the value is null, return 1
                  1,
            ),
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
