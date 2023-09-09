// ignore_for_file: public_member_api_docs
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/index.dart';

class OpenWAlign extends Align {
  /// Returns a [Align] widget in Teta
  OpenWAlign({
    Key? key,
    required final BuildContext context,
    required this.nodeState,
    required this.align,
    required final CNode? child,
  }) : super(
          alignment: align.get(
            context,
            forPlay: context.watch<TreeState>().forPlay,
            deviceType: context.watch<TreeState>().deviceType,
          ),
          key: key,
          child: ChildBuilder(context: context, state: nodeState, child: child)
              .build(),
        );

  final WidgetState nodeState;
  final FAlign align;
}
