import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';

class CrossAxisCountControl extends StatefulWidget {
  const CrossAxisCountControl({
    super.key,
    required this.value,
    required this.deviceType,
    required this.onCrossAxisCountChanged,
  });

  final FTextTypeInput value;
  final DeviceType deviceType;
  final Function(FTextTypeInput value) onCrossAxisCountChanged;

  @override
  State<CrossAxisCountControl> createState() => _CrossAxisCountControlState();
}

class _CrossAxisCountControlState extends State<CrossAxisCountControl> {
  late double value;

  @override
  void initState() {
    super.initState();
    if (widget.deviceType == DeviceType.phone) {
      value = double.tryParse(widget.value.value ?? '2') ?? 2;
    } else if (widget.deviceType == DeviceType.tablet) {
      value = double.tryParse(widget.value.valueTablet ?? '2') ?? 2;
    }
    if (widget.deviceType == DeviceType.laptop) {
      value = double.tryParse(widget.value.valueLaptop ?? '3') ?? 3;
    } else {
      value = double.tryParse(widget.value.valueDesktop ?? '4') ?? 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return ExpandableContainer(
      title: 'Layout Grid',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TDetailLabel(
            'How many items per row?',
            color: theme.txtPrimary60,
          ),
          const Gap(Grid.medium),
          Slider(
            value: value,
            min: 1,
            max: 6,
            divisions: 5,
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
              widget.onCrossAxisCountChanged(temp);
            },
          ),
        ],
      ),
    );
  }
}
