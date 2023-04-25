import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Wrap widget in Teta
/// It takes a [children] of type [CNode] as children
class OpenWWrap extends Wrap {
  /// Returns a Wrap widget in Teta
  OpenWWrap({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final List<CNode> children,
  }) : super(
          children: children.isNotEmpty
              ? children
                  .map((final e) => e.toWidget(
                        context: context,
                        state: state.copyWith(
                          node: e,
                          loop: children.indexOf(e),
                        ),
                      ))
                  .toList()
              : [],
        );
}
