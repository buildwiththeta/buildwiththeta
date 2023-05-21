import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWTextField extends StatefulWidget {
  /// Returns a TextField widget in Teta
  const OpenWTextField({
    super.key,
    required this.state,
    required this.width,
    required this.value,
    required this.labelText,
    required this.margins,
    required this.paddings,
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
  final FTextTypeInput value;
  final FTextTypeInput labelText;
  final FSize width;
  final FMargins margins;
  final FMargins paddings;
  final FFill fill;
  final FFill cursorColor;
  final FFill hintTextColor;
  final FTextTypeInput maxLines;
  final FTextTypeInput minLines;
  final FTextTypeInput maxLenght;
  final FKeyboardType keyboardType;
  final bool showCursor;
  final bool autoCorrect;
  final bool obscureText;
  final FTextStyle textStyle;
  final FBorderRadius borderRadius;
  final bool showBorders;
  final FTextTypeInput bordersSize;

  final FFill enabledBorderColor;
  final FFill focusedBorderColor;

  @override
  _WTextFieldState createState() => _WTextFieldState();
}

class _WTextFieldState extends State<OpenWTextField> with AfterLayoutMixin {
  TextEditingController textEditingController = TextEditingController();

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
    final tempOpacity = widget.fill.levels.first.opacity;
    final opacity = tempOpacity >= 0 && tempOpacity <= 1 ? tempOpacity : 1.0;

    final tempBorderOpacity = widget.enabledBorderColor.levels.first.opacity;
    final borderOpacity = tempBorderOpacity >= 0 && tempBorderOpacity <= 1
        ? tempBorderOpacity
        : 1.0;

    final tempFocusOpacity = widget.focusedBorderColor.levels.first.opacity;
    final focusOpacity =
        tempFocusOpacity >= 0 && tempFocusOpacity <= 1 ? tempFocusOpacity : 1.0;

    final tempHintOpacity = widget.hintTextColor.levels.first.opacity;
    final hintOpacity =
        tempHintOpacity >= 0 && tempHintOpacity <= 1 ? tempHintOpacity : 1.0;
    return Center(
      child: Container(
        margin: widget.margins.get(
          context: context,
          state: state,
        ),
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius.get(
            context,
            forPlay: state.forPlay,
            deviceType: state.deviceType,
          ),
        ),
        child: TextField(
          autofocus: true,
          controller: textEditingController,
          decoration: InputDecoration(
            filled: true,
            fillColor: HexColor(widget.fill.getHexColor(
              context,
              state.colorStyles,
              state.theme,
            )).withOpacity(opacity),
            counterStyle: TextStyle(
              color: HexColor(widget.fill.getHexColor(
                context,
                state.colorStyles,
                state.theme,
              )).withOpacity(opacity),
            ),
            border: OutlineInputBorder(
              borderRadius: borderRadius,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: widget.showBorders
                    ? HexColor(
                        widget.enabledBorderColor.getHexColor(
                          context,
                          state.colorStyles,
                          state.theme,
                        ),
                      ).withOpacity(
                        borderOpacity,
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
                    ? HexColor(
                        widget.focusedBorderColor.getHexColor(
                          context,
                          state.colorStyles,
                          state.theme,
                        ),
                      ).withOpacity(
                        focusOpacity,
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
              color: HexColor(
                widget.hintTextColor.getHexColor(
                  context,
                  state.colorStyles,
                  state.theme,
                ),
              ).withOpacity(
                hintOpacity,
              ),
            ),
            contentPadding: widget.paddings.get(
              context: context,
              state: state,
            ),
          ),
          style: widget.textStyle.get(
            state,
            context,
            state.forPlay,
            model,
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
