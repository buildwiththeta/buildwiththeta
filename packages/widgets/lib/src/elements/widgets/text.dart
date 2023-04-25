// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/theta_state_widget.dart';
import 'package:theta_open_widgets/src/elements/builders/text_builder.dart';
// Package imports:
import 'package:theta_models/theta_models.dart';

class OpenWText extends StatefulWidget {
  /// Returns a Text widget in Teta
  const OpenWText({
    super.key,
    required this.state,
    required this.value,
    required this.textStyle,
    required this.isFullWidth,
    required this.maxLines,
  });

  final WidgetState state;
  final FTextTypeInput value;
  final FTextStyle textStyle;
  final bool isFullWidth;
  final FTextTypeInput maxLines;

  @override
  State<OpenWText> createState() => _WTextState();
}

class _WTextState extends State<OpenWText> with AfterLayoutMixin {
  final TextEditingController _controller = TextEditingController();
  bool isEditing = false;
  final FocusNode focusNode = FocusNode();

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    final state = TreeGlobalState.state;

    /// Set the text controller to the value
    _controller.text = widget.value.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
  }

  @override
  Widget build(final BuildContext context) {
    /// Render the text
    final text = TextBuilder(
      nodeState: widget.state,
      textStyle: widget.textStyle,
      value: widget.value,
      maxLines: widget.maxLines,
    );

    /// If the text is full width, return a sized box with the text
    return widget.isFullWidth
        ? SizedBox(width: double.maxFinite, child: text)
        : text;
  }
}
