import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a Visibility widget
/// [value] is a boolean value
/// [child] is a child widget
/// [key] is a key for the widget
/// [state] is a state of the widget
/// [context] is a context of the widget
/// How it works: [value] is a boolean value, if it is true, the [child] is visible, if it is false, the [child] is not visible
class OpenWVisibility extends Visibility {
  /// Returns a Visibility widget
  /// [value] is a boolean value
  OpenWVisibility({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FTextTypeInput value,
    required final CNode? child,
  }) : super(
          /// Check if the value is true
          visible: value
                  .get(
                    state: TreeGlobalState.state,
                    loop: state.loop,
                    context: context,
                  )

                  /// Remove all spaces from the string
                  .replaceAll(' ', '') ==
              'true',
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
