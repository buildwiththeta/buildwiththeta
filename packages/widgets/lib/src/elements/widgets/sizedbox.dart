import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

/// Returns a SizedBox widget
/// It requires a [width] and [height] for the width and height properties
/// It takes a [child] of type [CNode] as child
class OpenWSizedBox extends SizedBox {
  /// Returns a SizedBox widget
  OpenWSizedBox({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FSize width,
    required final FSize height,
    final CNode? child,
  }) : super(
          width: width.get(
            context: context,
            isWidth: true,
            state: TreeGlobalState.state,
          ),
          height: height.get(
            context: context,
            isWidth: false,
            state: TreeGlobalState.state,
          ),
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
