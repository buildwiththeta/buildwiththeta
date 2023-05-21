import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWCupertinoSegmentedControl extends StatefulWidget {
  /// Returns a Gesture Detector
  const OpenWCupertinoSegmentedControl({
    super.key,
    required this.state,
    required this.children,
    required this.pressedColor,
    required this.selectedColor,
    required this.unselectedColor,
    required this.borderColor,
    //required this.action,
  });

  final WidgetState state;
  final List<CNode> children;
  //final NodeGestureActions action;
  final FFill pressedColor;
  final FFill selectedColor;
  final FFill unselectedColor;
  final FFill borderColor;

  @override
  State<OpenWCupertinoSegmentedControl> createState() =>
      _WCupertinoSegmentedControlState();
}

class _WCupertinoSegmentedControlState
    extends State<OpenWCupertinoSegmentedControl> {
  int value = 0;
  @override
  Widget build(final BuildContext context) {
    final map = <int, Widget>{};
    for (var i = 0; i < widget.children.length; i++) {
      map[i] =
          widget.children[i].toWidget(context: context, state: widget.state);
    }
    if (map.keys.isEmpty) {
      map[0] = Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: const Center(
          child: THeadline3(
            'Option 1',
          ),
        ),
      );
      map[1] = Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: const Center(
          child: THeadline3(
            'Option 2',
          ),
        ),
      );
    }
    final state = context.watch<TreeState>();
    return IgnorePointer(
      ignoring: !state.forPlay,
      child: CupertinoSegmentedControl<int>(
        children: map,
        groupValue: value,
        pressedColor: HexColor(widget.pressedColor.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        )),
        selectedColor: HexColor(widget.selectedColor.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        )),
        unselectedColor: HexColor(widget.unselectedColor.getHexColor(
          context,
          state.colorStyles,
          state.theme,
        )),
        borderColor: HexColor(
          widget.borderColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        onValueChanged: (final v) {
          setState(() {
            value = v;
          });
        },
      ),
    );
  }
}
