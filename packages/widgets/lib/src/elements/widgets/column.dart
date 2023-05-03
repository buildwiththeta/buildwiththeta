// Flutter imports:

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWColumn extends Flex {
  /// Returns a [WColumn] widget in Teta
  OpenWColumn({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final List<CNode> children,
    required final FMainAxisAlignment mainAxisAlignment,
    required final FCrossAxisAlignment crossAxisAlignment,
    required final FMainAxisSize mainAxisSize,
  }) : super(
          direction: Axis.vertical,
          children: children.isNotEmpty
              ? children
                  .map((final e) => e.toWidget(context: context, state: state))
                  .toList()
              : [],
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
