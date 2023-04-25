import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Padding widget
/// It requires a [padding] for the EdgeInsets property
/// It takes a [child] of type [CNode] as child
class OpenWPadding extends Padding {
  OpenWPadding({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final FMargins padding,
    final CNode? child,
  }) : super(
          padding: padding.get(
            state: TreeGlobalState.state,
            context: context,
          ),
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
