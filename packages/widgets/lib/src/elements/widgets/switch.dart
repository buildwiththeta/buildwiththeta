import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta_models/theta_models.dart';

import '../builders/workflow_executer.dart';

class OpenWSwitch extends StatefulWidget {
  // Returns a Switch widget in Theta
  const OpenWSwitch({
    super.key,
    required this.state,
    required this.value,
    required this.activeColor,
    required this.activeTrackColor,
    required this.inactiveThumbColor,
    required this.inactiveTrackColor,
    required this.focusColor,
    required this.hoverColor,
  });

  final WidgetState state;
  final bool value;
  final FFill activeColor;
  final FFill activeTrackColor;
  final FFill inactiveThumbColor;
  final FFill inactiveTrackColor;
  final FFill focusColor;
  final FFill hoverColor;

  @override
  createState() => _WSwitchState();
}

class _WSwitchState extends State<OpenWSwitch> {
  bool? value;
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
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    return IgnorePointer(
      ignoring: !state.forPlay,
      child: Switch(
        value: value ?? widget.value,
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
          if (executer.doesWorkflowExist(Trigger.onChange)) {
            executer.execute(Trigger.onChange, value);
          }
        },
        activeColor: HexColor(
          widget.activeColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        activeTrackColor: HexColor(
          widget.activeTrackColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        inactiveThumbColor: HexColor(
          widget.inactiveThumbColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        inactiveTrackColor: HexColor(
          widget.inactiveTrackColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        focusColor: HexColor(
          widget.focusColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
        hoverColor: HexColor(
          widget.hoverColor.getHexColor(
            context,
            state.colorStyles,
            state.theme,
          ),
        ),
      ),
    );
  }
}
