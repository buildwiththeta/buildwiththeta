import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class TextMaxLinesControls extends StatefulWidget {
  const TextMaxLinesControls({
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
  State<TextMaxLinesControls> createState() => _TextMaxLinesControlsState();
}

class _TextMaxLinesControlsState extends State<TextMaxLinesControls> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.initialValue
        .getValue(context, forPlay: false, deviceType: widget.deviceType);
    controller.addListener(() {
      final newValue = int.tryParse(controller.text);
      if (newValue == null) {
        widget.onTextChanged(widget.initialValue.copyWith(
          value: widget.deviceType == DeviceType.phone ? '' : null,
          valueTablet: widget.deviceType == DeviceType.tablet ? '' : null,
          valueDesktop: widget.deviceType == DeviceType.desktop ? '' : null,
        ));
      } else {
        widget.onTextChanged(widget.initialValue.copyWith(
          value: widget.deviceType == DeviceType.phone ? controller.text : null,
          valueTablet:
              widget.deviceType == DeviceType.tablet ? controller.text : null,
          valueDesktop:
              widget.deviceType == DeviceType.desktop ? controller.text : null,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: widget.title ?? 'Max Lines',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThetaTextField(
            controller: controller,
            placeholder: '',
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
