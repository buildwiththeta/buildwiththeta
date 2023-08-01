import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class TextValueControls extends StatefulWidget {
  const TextValueControls({
    super.key,
    required this.initialValue,
    required this.deviceType,
    required this.onTextChanged,
    this.title,
  });

  final String? title;
  final FTextTypeInput initialValue;
  final DeviceType deviceType;
  final Function(FTextTypeInput value) onTextChanged;

  @override
  State<TextValueControls> createState() => _TextValueControlsState();
}

class _TextValueControlsState extends State<TextValueControls> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.initialValue
        .getValue(context, forPlay: false, deviceType: widget.deviceType);
    controller.addListener(() {
      widget.onTextChanged(widget.initialValue.copyWith(
        value: widget.deviceType == DeviceType.phone ? controller.text : null,
        valueTablet:
            widget.deviceType == DeviceType.tablet ? controller.text : null,
        valueDesktop:
            widget.deviceType == DeviceType.desktop ? controller.text : null,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: widget.title ?? 'Text',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThetaTextField(
            controller: controller,
            placeholder: '',
            keyboardType: TextInputType.text,
          ),
        ],
      ),
    );
  }
}
