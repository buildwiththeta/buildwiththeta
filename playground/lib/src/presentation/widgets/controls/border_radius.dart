import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

import '../expandable_container.dart';
import '../spacing_input_field.dart';

class BorderRadiusControls extends StatefulWidget {
  const BorderRadiusControls({
    super.key,
    required this.node,
    required this.deviceType,
    required this.onBorderRadiusChanged,
  });

  final CNode node;
  final DeviceType deviceType;
  final Function(
    double topLeft,
    double topRight,
    double bottomRight,
    double bottomLeft,
  ) onBorderRadiusChanged;

  @override
  State<BorderRadiusControls> createState() =>
      _BorderRadiusControlsStateControls();
}

class _BorderRadiusControlsStateControls extends State<BorderRadiusControls> {
  late List<double>? borderRadius;

  @override
  void initState() {
    super.initState();
    if (widget.deviceType == DeviceType.phone) {
      borderRadius =
          (widget.node.getAttributes[DBKeys.borderRadius] as FBorderRadius)
              .radiusMobile;
    } else if (widget.deviceType == DeviceType.tablet) {
      borderRadius =
          (widget.node.getAttributes[DBKeys.borderRadius] as FBorderRadius)
              .radiusTablet;
    } else {
      borderRadius =
          (widget.node.getAttributes[DBKeys.borderRadius] as FBorderRadius)
              .radiusDesktop;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: 'Border radius',
      child: SpacingInputField(
        type: SpacingType.borderRadius,
        topOrTopLeft: borderRadius?[0] ?? 0,
        bottomOrTopRight: borderRadius?[1] ?? 0,
        rightOrBottomRight: borderRadius?[2] ?? 0,
        leftOrBottomLeft: borderRadius?[3] ?? 0,
        onSpacingChanged: (topLeft, topRight, bottomRight, bottomLeft) {
          widget.onBorderRadiusChanged(
            topLeft,
            topRight,
            bottomRight,
            bottomLeft,
          );
        },
      ),
    );
  }
}
