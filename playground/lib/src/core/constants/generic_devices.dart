import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

const desktopInfoWidth = 1512.0;
const desktopInfoHeight = 982.0;

final laptopInfo = DeviceInfo.genericLaptop(
  platform: TargetPlatform.macOS,
  name: 'Large',
  id: 'large',
  screenSize: const Size(1200, 832),
  windowPosition: Rect.fromCenter(
    center: const Offset(
      1200 * 0.5,
      832 * 0.5,
    ),
    width: 1200,
    height: 832,
  ),
);

final desktopInfo = DeviceInfo.genericDesktopMonitor(
  platform: TargetPlatform.macOS,
  name: 'Large',
  id: 'large',
  screenSize: const Size(1920, 1080),
  windowPosition: Rect.fromCenter(
    center: const Offset(
      1920 * 0.5,
      1080 * 0.5,
    ),
    width: 1920,
    height: 1080,
  ),
);
