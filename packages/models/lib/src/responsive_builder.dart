import 'dart:io';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Returns the [DeviceScreenType] that the application is currently running on
DeviceType getDeviceType(Size size) {
  double deviceWidth = size.shortestSide;

  if (kIsWeb || Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    deviceWidth = size.width;
  }

  // Replaces the defaults with the user defined definitions

  // If no user defined definitions are passed through use the defaults
  if (deviceWidth >= 950) {
    return DeviceType.desktop;
  }

  if (deviceWidth >= 600) {
    return DeviceType.tablet;
  }

  return DeviceType.phone;
}

/// Will return one of the values passed in for the device it's running on
T getValueForScreenType<T>({
  required BuildContext context,
  required T mobile,
  T? tablet,
  T? desktop,
  T? watch,
}) {
  var deviceScreenType = getDeviceType(MediaQuery.of(context).size);
  // If we're at desktop size
  if (deviceScreenType == DeviceType.desktop) {
    // If we have supplied the desktop layout then display that
    if (desktop != null) return desktop;
    // If no desktop layout is supplied we want to check if we have the size below it and display that
    if (tablet != null) return tablet;
  }

  if (deviceScreenType == DeviceType.tablet) {
    if (tablet != null) return tablet;
  }

  if (deviceScreenType == DeviceType.phone) {
    if (mobile != null) return mobile;
  }

  return mobile;
}
