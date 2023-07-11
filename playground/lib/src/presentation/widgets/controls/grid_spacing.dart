import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class GridSpacingControl extends StatefulWidget {
  const GridSpacingControl({
    super.key,
    required this.title,
    required this.value,
    required this.deviceType,
    required this.onSpacingChanged,
  });

  final String title;
  final FTextTypeInput value;
  final DeviceType deviceType;
  final Function(FTextTypeInput value) onSpacingChanged;

  @override
  State<GridSpacingControl> createState() => _GridSpacingControlState();
}

class _GridSpacingControlState extends State<GridSpacingControl> {
  late double value;

  @override
  void initState() {
    super.initState();
    if (widget.deviceType == DeviceType.phone) {
      value = double.tryParse(widget.value.value ?? '2') ?? 2;
    } else if (widget.deviceType == DeviceType.tablet) {
      value = double.tryParse(widget.value.valueTablet ?? '2') ?? 2;
    } else if (widget.deviceType == DeviceType.laptop) {
      value = double.tryParse(widget.value.valueLaptop ?? '2') ?? 2;
    }
    {
      value = double.tryParse(widget.value.valueDesktop ?? '3') ?? 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: widget.title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Slider(
            value: value,
            min: 0,
            max: 80,
            divisions: 80,
            label: value.round().toString(),
            onChanged: (double value) {
              setState(() {
                this.value = value;
              });
              late FTextTypeInput temp;
              if (widget.deviceType == DeviceType.phone) {
                temp = widget.value.copyWith(value: value.round().toString());
              } else if (widget.deviceType == DeviceType.tablet) {
                temp = widget.value
                    .copyWith(valueTablet: value.round().toString());
              } else if (widget.deviceType == DeviceType.laptop) {
                temp = widget.value
                    .copyWith(valueLaptop: value.round().toString());
              } else {
                temp = widget.value
                    .copyWith(valueDesktop: value.round().toString());
              }
              widget.onSpacingChanged(temp);
            },
          ),
        ],
      ),
    );
  }
}
