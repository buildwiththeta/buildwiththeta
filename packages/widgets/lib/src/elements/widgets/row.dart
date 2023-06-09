// Flutter imports:

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/child_override_executer.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

// ignore_for_file: public_member_api_docs

class OpenWRow extends Flex {
  /// Returns a [OpenWRow] widget in Teta
  OpenWRow({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final List<CNode> children,
    required final FMainAxisAlignment mainAxisAlignment,
    required final FCrossAxisAlignment crossAxisAlignment,
    required final FMainAxisSize mainAxisSize,
  }) : super(
          direction: Axis.horizontal,
          children: const NodeOverrideExecuter()
              .executeChildren(context, state, children),
          mainAxisAlignment: mainAxisAlignment.value,
          crossAxisAlignment: crossAxisAlignment.value,
          mainAxisSize: mainAxisSize.value,
        );

  @override
  RenderFlex createRenderObject(BuildContext context) {
    return CRenderFlex(
      direction: direction,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: getEffectiveTextDirection(context),
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      clipBehavior: clipBehavior,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFlex renderObject) {
    renderObject
      ..direction = direction
      ..mainAxisAlignment = mainAxisAlignment
      ..mainAxisSize = mainAxisSize
      ..crossAxisAlignment = crossAxisAlignment
      ..textDirection = getEffectiveTextDirection(context)
      ..verticalDirection = verticalDirection
      ..textBaseline = textBaseline
      ..clipBehavior = clipBehavior;
  }
}
