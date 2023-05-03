import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

class OpenWFittedBox extends FittedBox {
  /// Returns a [WFittedBox] widget in Teta
  OpenWFittedBox({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
    required final FBoxFit boxFit,
  }) : super(
          child: ChildBuilder(
            context: context,
            state: state,
            child: child,
          ),
          fit: boxFit.value,
        );
}
