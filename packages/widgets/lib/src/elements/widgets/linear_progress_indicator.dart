import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a [LinearProgressIndicator] widget in Teta
/// It wants a [BuildContext] and a [WidgetState] to get the [FFill] values.
class OpenWLinearProgressIndicator extends NodeWidget {
  /// Returns a [LinearProgressIndicator] widget in Teta
  const OpenWLinearProgressIndicator({
    super.key,
    required super.nodeState,
    required this.fill,
    required this.background,
  });

  /// The [FFill] value for the [LinearProgressIndicator] widget
  final FFill fill;

  /// The background [FFill] value for the [LinearProgressIndicator] widget
  final FFill background;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    return LinearProgressIndicator(
      backgroundColor: HexColor(
        background.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        ),
      ),
      valueColor: AlwaysStoppedAnimation<Color>(
        HexColor(
          fill.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
      ),
    );
  }
}
