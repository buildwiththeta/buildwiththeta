// Flutter imports:

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/core/spacing_widgets.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';

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
    required final FDirection direction,
    required final FSize spacing,
  }) : super(
          direction: direction.get(
                state: context.watch<TreeState>(),
                context: context,
              ) ??
              Axis.vertical,
          children: spacing.get(
                      forPlay: context.watch<TreeState>().forPlay,
                      deviceType: context.watch<TreeState>().deviceType,
                      deviceInfo: context.watch<TreeState>().deviceInfo,
                      context: context,
                      isWidth: _getDirection(direction, context) ==
                          Axis.horizontal) !=
                  null
              ? const NodeOverrideExecuter()
                  .executeChildren(context, state, children)
                  .mapIndexed((index, e) {
                  if (index == 0) {
                    return e;
                  } else if (index == children.length) {
                    return e;
                  } else if (index == children.length - 1) {
                    final state = context.watch<TreeState>();
                    return SpacingMiddleWidget(
                      spacing: spacing.get(
                              forPlay: state.forPlay,
                              deviceType: state.deviceType,
                              deviceInfo: state.deviceInfo,
                              context: context,
                              isWidth: _getDirection(direction, context) ==
                                  Axis.horizontal) ??
                          0,
                      direction: _getDirection(direction, context),
                      child: e,
                    );
                  } else {
                    final state = context.watch<TreeState>();
                    return SpacingLastWidget(
                      spacing: spacing.get(
                              forPlay: state.forPlay,
                              deviceType: state.deviceType,
                              deviceInfo: state.deviceInfo,
                              context: context,
                              isWidth: _getDirection(direction, context) ==
                                  Axis.horizontal) ??
                          0,
                      direction: _getDirection(direction, context),
                      child: e,
                    );
                  }
                }).toList()
              : const NodeOverrideExecuter()
                  .executeChildren(context, state, children),
          mainAxisAlignment: mainAxisAlignment.value,
          crossAxisAlignment: crossAxisAlignment.value,
          mainAxisSize: mainAxisSize.value,
        );

  static Axis _getDirection(FDirection direction, BuildContext context) {
    return direction.get(
          state: context.watch<TreeState>(),
          context: context,
        ) ??
        Axis.vertical;
  }

  @override
  RenderFlex createRenderObject(BuildContext context) {
    return RenderFlex(
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
