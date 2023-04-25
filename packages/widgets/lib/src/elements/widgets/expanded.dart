import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWExpanded extends Expanded {
  /// Returns a [WExpanded] widget in Teta
  OpenWExpanded({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
  }) : super(
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
        );
}
