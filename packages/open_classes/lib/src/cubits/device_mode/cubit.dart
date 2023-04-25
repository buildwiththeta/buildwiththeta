// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:bloc/bloc.dart';
// Project imports:
import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class DeviceModeCubit extends Cubit<DeviceState> {
  DeviceModeCubit(BuildContext context)
      : super(
          MediaQuery.of(context).size.width > 600
              ? DeviceState(
                  DeviceType.desktop,
                  DeviceInfo.genericDesktopMonitor(
                    platform: TargetPlatform.windows,
                    name: 'Desktop',
                    id: 'Desktop',
                    screenSize: const Size(1920, 1080),
                    windowPosition: Rect.fromCenter(
                      center: const Offset(
                        1920 * 0.5,
                        1080 * 0.5,
                      ),
                      width: 1920,
                      height: 1080,
                    ),
                  ),
                )
              : DeviceState(
                  DeviceType.phone,
                  Devices.ios.iPhone13,
                ),
        );

  void changeDeviceMode(final DeviceType type, final DeviceInfo deviceType) =>
      emit(DeviceState(type, deviceType));
}

class DeviceState extends Equatable {
  const DeviceState(this.type, this.info);
  final DeviceType type;
  final DeviceInfo info;

  @override
  List<Object?> get props => [
        type,
        info,
        info.identifier.name,
      ];
}
