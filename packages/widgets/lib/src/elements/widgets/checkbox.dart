import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWCheckBox extends StatefulWidget {
  /// Returns a CheckBox widget in Teta
  const OpenWCheckBox({
    super.key,
    required this.state,
    required this.value,
  });

  final WidgetState state;
  final FTextTypeInput value;

  @override
  State<OpenWCheckBox> createState() => _WCheckBoxState();
}

class _WCheckBoxState extends State<OpenWCheckBox> with AfterLayoutMixin {
  bool val = false;

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    final TreeState state = context.read<TreeState>();
    setState(() {
      val = widget.value.get(
            state: state,
            context: context,
            loop: widget.state.loop,
          ) ==
          'true';
    });
  }

  // bool flag = false;
  @override
  Widget build(final BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    return Checkbox(
      onChanged: (final value) {
        if (state.forPlay) {
          setState(() {
            if (val) {
              val = false;
            } else {
              val = true;
            }
          });
        }
      },
      value: val == 'true',
      mouseCursor: const FCursor(cursor: SystemMouseCursors.click).cursor,
      fillColor:
          MaterialStateProperty.resolveWith((final states) => Colors.black),
    );
  }
}
