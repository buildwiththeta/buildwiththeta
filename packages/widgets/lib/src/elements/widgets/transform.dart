import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

class OpenWTransform extends Transform {
  /// Returns a tooltip widget in Teta
  OpenWTransform({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput valueX,
    required final FTextTypeInput valueY,
    required final FTextTypeInput valueZ,
    required final CNode? child,
  }) : super(
          transform: Matrix4.identity()
            ..setEntry(1, 1, 1)

            /// Rotate the child on the X axis
            ..rotateX(
              /// Get the value from the state and convert it to a double
              double.tryParse(
                    valueX.get(
                      state: TreeGlobalState.state,
                      loop: state.loop,
                      context: context,
                    ),
                  ) ??

                  /// If the value is null, return 0
                  0,
            )

            /// Rotate the child on the Y axis
            ..rotateY(
              /// Get the value from the state and convert it to a double
              double.tryParse(
                    valueY.get(
                      state: TreeGlobalState.state,
                      loop: state.loop,
                      context: context,
                    ),
                  ) ??

                  /// If the value is null, return 0
                  0,
            )

            /// Rotate the child on the Z axis
            ..rotateZ(
              /// Get the value from the state and convert it to a double
              double.tryParse(
                    valueZ.get(
                      state: TreeGlobalState.state,
                      loop: state.loop,
                      context: context,
                    ),
                  ) ??

                  /// If the value is null, return 0
                  0,
            ),
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
