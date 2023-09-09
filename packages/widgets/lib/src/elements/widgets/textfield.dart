import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/text_style_builder.dart';

import '../builders/workflow_executer.dart';

class OpenWTextField extends StatefulWidget {
  // Returns a TextField widget in Theta
  const OpenWTextField({
    super.key,
    required this.state,
    required this.contentPadding,
    required this.width,
    required this.value,
    required this.labelText,
    required this.fill,
    required this.textStyle,
    required this.cursorColor,
    required this.hintTextColor,
    required this.maxLines,
    required this.minLines,
    required this.maxLenght,
    required this.keyboardType,
    required this.showCursor,
    required this.autoCorrect,
    required this.obscureText,
    required this.borderRadius,
    required this.showBorders,
    required this.bordersSize,
    required this.enabledBorderColor,
    required this.focusedBorderColor,
  });

  final WidgetState state;
  final FMargins contentPadding;
  final FTextTypeInput value;
  final FTextTypeInput labelText;
  final FTextTypeInput maxLines;
  final FTextTypeInput minLines;
  final FTextTypeInput maxLenght;
  final FTextTypeInput bordersSize;
  final FTextStyle textStyle;
  final FSize width;
  final FFill fill;
  final FFill cursorColor;
  final FFill hintTextColor;
  final FFill enabledBorderColor;
  final FFill focusedBorderColor;
  final FKeyboardType keyboardType;
  final FBorderRadius borderRadius;
  final bool showCursor;
  final bool autoCorrect;
  final bool obscureText;
  final bool showBorders;

  @override
  createState() => _WTextFieldState();
}

class _WTextFieldState extends State<OpenWTextField> with AfterLayoutMixin {
  TextEditingController textEditingController = TextEditingController();
  late WorkflowExecuter executer;
  @override
  void initState() {
    super.initState();
    final state = context.read<TreeState>();
    executer = WorkflowExecuter(
      nodeID: widget.state.node.id,
      nodeName: widget.state.node.name!,
      workflows: state.workflows,
    );
  }

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    final state = context.read<TreeState>();
    final valueInput = widget.value.get(
      state: state,
      loop: widget.state.loop,
      context: context,
    );
    textEditingController.text = valueInput;
  }

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    if (!state.forPlay) {
      final valueInput = widget.value.get(
        state: state,
        loop: widget.state.loop,
        context: context,
      );
      textEditingController.text = valueInput;
    }

    final borderRadius = widget.borderRadius.get(
      context,
      forPlay: state.forPlay,
      deviceType: state.deviceType,
    );
    TextStyleEntity? model;
    if (widget.textStyle.textStyleModel != null) {
      for (var element in state.textStyles) {
        if (element.name == widget.textStyle.textStyleModel) model = element;
      }
    }
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius.get(
            context,
            forPlay: state.forPlay,
            deviceType: state.deviceType,
          ),
        ),
        child: TextField(
          onSubmitted: (value) {
            if (executer.doesWorkflowExist(Trigger.onSubmitted)) {
              executer.execute(Trigger.onSubmitted, value);
            }
          },
          onEditingComplete: () {
            if (executer.doesWorkflowExist(Trigger.onEditingComplete)) {
              executer.execute(
                  Trigger.onEditingComplete, textEditingController.text);
            }
          },
          onChanged: (value) {
            if (executer.doesWorkflowExist(Trigger.onChange)) {
              executer.execute(Trigger.onChange, value);
            }
          },
          keyboardType: widget.keyboardType.type,
          autofocus: true,
          controller: textEditingController,
          decoration: InputDecoration(
            filled: true,
            fillColor: widget.fill.getColor(
              context,
              state.colorStyles,
              state.theme,
            ),
            counterStyle: TextStyle(
              color: widget.fill.getColor(
                context,
                state.colorStyles,
                state.theme,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: borderRadius,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: widget.showBorders
                    ? widget.enabledBorderColor.getColor(
                        context,
                        state.colorStyles,
                        state.theme,
                      )
                    : Colors.transparent,
                width: double.tryParse(
                      widget.bordersSize.get(
                        state: state,
                        loop: widget.state.loop,
                        context: context,
                      ),
                    ) ??
                    1,
              ),
              borderRadius: borderRadius,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: widget.showBorders
                    ? widget.focusedBorderColor.getColor(
                        context,
                        state.colorStyles,
                        state.theme,
                      )
                    : Colors.transparent,
                width: double.tryParse(
                      widget.bordersSize.get(
                        state: state,
                        loop: widget.state.loop,
                        context: context,
                      ),
                    ) ??
                    1,
              ),
              borderRadius: borderRadius,
            ),
            hintText: widget.labelText.get(
              state: state,
              loop: widget.state.loop,
              context: context,
            ),
            hintStyle: TextStyle(
              color: widget.hintTextColor.getColor(
                context,
                state.colorStyles,
                state.theme,
              ),
            ),
            contentPadding: widget.contentPadding.get(
              context: context,
              state: state,
            ),
          ),
          style: TetaTextStyles.get(
            nodeState: widget.state,
            state: state,
            context: context,
            model: model,
            forPlay: state.forPlay,
            fill: widget.textStyle.fill,
            fontFamily: widget.textStyle.fontFamily,
            fontSize: widget.textStyle.fontSize,
            fontWeight: widget.textStyle.fontWeight,
            textDecoration: widget.textStyle.textDecoration,
            fontStyle: widget.textStyle.fontStyle,
          ),
          textAlign: widget.textStyle.textAlign.value,
          autocorrect: widget.autoCorrect,
          obscureText: widget.obscureText,
          maxLength: int.tryParse(
            widget.maxLenght.get(
              state: state,
              loop: widget.state.loop,
              context: context,
            ),
          ),
          maxLines: int.tryParse(
                widget.maxLines.get(
                  state: state,
                  loop: widget.state.loop,
                  context: context,
                ),
              ) ??
              1,
          minLines: int.tryParse(
            widget.minLines.get(
              state: state,
              loop: widget.state.loop,
              context: context,
            ),
          ),
          enabled: state.forPlay,
        ),
      ),
    );
  }
}
