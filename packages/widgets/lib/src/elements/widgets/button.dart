import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

// ignore_for_file: public_member_api_docs

class OpenWButton extends NodeWidget {
  /// Returns a Button widget in Teta
  const OpenWButton({
    super.key,
    required super.nodeState,
    required this.value,
    required this.width,
    required this.height,
    required this.fill,
    required this.textStyle,
    required this.borderRadius,
    required this.textAlignPosition,
    required this.actionValue,
    required this.onTap,
    required this.onDoubleTap,
    required this.onLongPress,
  });

  final FTextTypeInput value;
  final FSize width;
  final FSize height;
  final FFill fill;
  final FBorderRadius borderRadius;
  final FTextStyle textStyle;
  final FAlign textAlignPosition;
  final FTextTypeInput actionValue;
  final Function() onTap;
  final Function() onDoubleTap;
  final Function() onLongPress;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return IgnorePointer(
      ignoring: !state.forPlay,
      child: GestureDetector(
        onTap: () {
          onTap.call();
        },
        onDoubleTap: () {
          onDoubleTap.call();
        },
        onLongPress: () {
          onLongPress.call();
        },
        child: SizedBox(
          width: width.get(
            state: state,
            context: context,
            isWidth: true,
          ),
          height: height.get(
            state: state,
            context: context,
            isWidth: false,
          ),
          child: DecoratedBox(
            decoration: TetaBoxDecoration.get(
              state: state,
              context: context,
              fill: fill.get(context, state.colorStyles, state.theme),
              borderRadius: borderRadius,
            ),
            child: Center(
              child: SizedBox(
                width: double.maxFinite,
                child: TextBuilder(
                  nodeState: nodeState,
                  textStyle: textStyle,
                  value: value,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
