// Flutter imports:

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/override_executer.dart';

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
    required final FDirection direction,
    required final FSize spacing,
  }) : super(
          direction: direction.get(
                state: context.watch<TreeState>(),
                context: context,
              ) ??
              Axis.horizontal,
          children: spacing.get(
                      forPlay: context.watch<TreeState>().forPlay,
                      deviceInfo: context.watch<TreeState>().deviceInfo,
                      deviceType: context.watch<TreeState>().deviceType,
                      context: context,
                      isWidth: false) !=
                  null
              ? const NodeOverrideExecuter()
                  .executeChildren(context, state, children)
                  .mapIndexed((index, e) {
                  if (index == 0) {
                    return e;
                  } else if (index == children.length) {
                    return e;
                  } else if (index == children.length - 1) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: spacing.get(
                                forPlay: context.watch<TreeState>().forPlay,
                                deviceInfo:
                                    context.watch<TreeState>().deviceInfo,
                                deviceType:
                                    context.watch<TreeState>().deviceType,
                                context: context,
                                isWidth: false) ??
                            0,
                        bottom: spacing.get(
                                forPlay: context.watch<TreeState>().forPlay,
                                deviceInfo:
                                    context.watch<TreeState>().deviceInfo,
                                deviceType:
                                    context.watch<TreeState>().deviceType,
                                context: context,
                                isWidth: false) ??
                            0,
                      ),
                      child: e,
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: spacing.get(
                                forPlay: context.watch<TreeState>().forPlay,
                                deviceInfo:
                                    context.watch<TreeState>().deviceInfo,
                                deviceType:
                                    context.watch<TreeState>().deviceType,
                                context: context,
                                isWidth: false) ??
                            0,
                      ),
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
