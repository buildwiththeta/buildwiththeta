import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';

class OpenWStack extends Stack {
  /// Returns a Stack widget in Teta
  OpenWStack({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final List<CNode> children,
  }) : super(
          children: const NodeOverrideExecuter()
              .executeChildren(context, state, children),
        );
}
