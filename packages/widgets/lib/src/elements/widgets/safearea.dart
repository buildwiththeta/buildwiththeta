import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a SafeArea widget
class OpenWSafeArea extends SafeArea {
  /// Constructor
  OpenWSafeArea({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final bool left,
    required final bool top,
    required final bool right,
    required final bool bottom,
    final CNode? child,
  }) : super(
          left: left,
          top: top,
          right: right,
          bottom: bottom,
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
