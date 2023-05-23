import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

class OpenWPlaceholder extends NodeWidget {
  /// Returns a [Center] widget in Teta
  const OpenWPlaceholder({
    super.key,
    required super.nodeState,
    required this.value,
    required this.color,
    required this.width,
    required this.height,
    this.child,
  });

  final CNode? child;
  final FTextTypeInput value;
  final FFill color;
  final FSize width;
  final FSize height;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    final val = value.get(
      state: state,
      loop: nodeState.loop,
      context: context,
    );
    return SizedBox(
      /// Get the value from the state and convert it to a string for width
      width: width.get(
            context: context,
            isWidth: true,
            state: state,
          ) ??
          400,

      /// Get the value from the state and convert it to a string for height
      height: height.get(
            context: context,
            isWidth: false,
            state: state,
          ) ??
          400,
      child: Placeholder(
        /// StrokeWidth is a double
        /// What's it? https://api.flutter.dev/flutter/widgets/Placeholder/strokeWidth.html
        strokeWidth: double.tryParse(val) != null ? double.parse(val) : 2.0,

        /// Color of the placeholder
        color: HexColor(
            color.getHexColor(context, state.colorStyles, state.theme)),
      ),
    );
  }
}
