import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/elements/index.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCenter extends Align {
  OpenWCenter({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final CNode? child,
  }) : super(
          child: ChildBuilder(context: context, state: state, child: child),
          alignment: Alignment.center,
        );
}
