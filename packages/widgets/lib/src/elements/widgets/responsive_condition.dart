import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_models/theta_models.dart';

/// Returns a Responsive Condition in Teta
/// It takes a [CNode] as a child
/// It takes a [visibleOnMobile] boolean
/// It takes a [visibleOnTablet] boolean
/// It takes a [visibleOnDesktop] boolean
/// How it works: If the device is a desktop, return the child if visibleOnDesktop is true
/// If the device is a tablet, return the child if visibleOnTablet is true
/// If the device is a mobile, return the child if visibleOnMobile is true
/// else return a SizedBox
class OpenWResponsiveCondition extends NodeWidget {
  /// Returns a Responsive Condition in Teta
  const OpenWResponsiveCondition({
    super.key,
    required super.nodeState,
    required this.visibleOnMobile,
    required this.visibleOnTablet,
    required this.visibleOnDesktop,
    this.child,
  });

  final CNode? child;
  final bool visibleOnMobile;
  final bool visibleOnTablet;
  final bool visibleOnDesktop;

  @override
  Widget build(final BuildContext context, final TreeState state,
      final WidgetState nodeState) {
    /// If the device is a desktop, return the child if visibleOnDesktop is true
    if (state.deviceType == DeviceType.desktop) {
      return visibleOnDesktop
          ? ChildBuilder(
              context: context,
              state: nodeState,
              child: child,
            )
          : const SizedBox();
    }

    /// If the device is a tablet, return the child if visibleOnTablet is true
    if (state.deviceType == DeviceType.tablet) {
      return visibleOnTablet
          ? ChildBuilder(
              context: context,
              state: nodeState,
              child: child,
            )
          : const SizedBox();
    }

    /// If the device is a mobile, return the child if visibleOnMobile is true
    return visibleOnMobile
        ? ChildBuilder(
            context: context,
            state: nodeState,
            child: child,
          )
        : const SizedBox();
  }
}
