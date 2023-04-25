import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWFractionallySizedBox extends FractionallySizedBox {
  /// Returns a [WFractionallySizedBox] widget in Teta
  OpenWFractionallySizedBox({
    super.key,
    required final BuildContext context,
    required final WidgetState nodeState,
    required final FSize widthFactor,
    required final FSize heightFactor,
    final CNode? child,
  }) : super(
          widthFactor: widthFactor.get(
            context: context,
            isWidth: true,
            state: TreeGlobalState.state,
          ),
          heightFactor: heightFactor.get(
            state: TreeGlobalState.state,
            context: context,
            isWidth: false,
          ),
          child: ChildBuilder(
            context: context,
            state: nodeState,
            child: child,
          ),
        );
}
