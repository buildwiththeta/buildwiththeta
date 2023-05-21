// Flutter imports:
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Package imports:
import 'package:theta_models/theta_models.dart';

/// Returns a [Text] widget with all the properties
class TextBuilder extends StatelessWidget {
  /// Constructor
  const TextBuilder({
    super.key,
    required this.nodeState,
    required this.textStyle,
    required this.value,
    this.maxLines,
  });

  final WidgetState nodeState;
  final FTextTypeInput value;
  final FTextTypeInput? maxLines;
  final FTextStyle textStyle;

  @override
  Widget build(final BuildContext context) {
    final TreeState state = context.watch<TreeState>();
    final model = state.textStyles.firstWhereOrNull(
        (element) => element.name == textStyle.textStyleModel);
    final maxLinesValue = maxLines?.get(
      loop: nodeState.loop,
      state: state,
      context: context,
    );
    var intValue = int.tryParse(maxLinesValue ?? '');
    if (intValue != null && intValue <= 0) {
      intValue = 1;
    }
    return Text(
      value.get(
        loop: nodeState.loop,
        state: state,
        context: context,
      ),
      style: textStyle.get(
        state,
        context,
        state.forPlay,
        model,
      ),
      textAlign: textStyle.textAlign.value,
      maxLines: intValue,
      textDirection: textStyle.textDirection.value,
    );
  }
}
