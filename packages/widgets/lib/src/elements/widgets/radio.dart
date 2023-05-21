import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Radio widget in Teta
class OpenWRadio extends StatefulWidget {
  /// Returns a Radio widget in Teta
  const OpenWRadio({
    super.key,
    required this.state,
    required this.value,
    required this.groupValue,
  });

  final WidgetState state;
  final FTextTypeInput value;
  final FTextTypeInput groupValue;

  @override
  _WRadioState createState() => _WRadioState();
}

class _WRadioState extends State<OpenWRadio> {
  bool val = false;
  @override
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    return Radio<String>(
      groupValue: widget.groupValue.get(
        state: state,
        loop: widget.state.loop,
        context: context,
      ),
      value: widget.value.get(
        state: state,
        loop: widget.state.loop,
        context: context,
      ),
      onChanged: (final value) {
        setState(() {
          val = !val;
        });
      },
    );
  }
}
