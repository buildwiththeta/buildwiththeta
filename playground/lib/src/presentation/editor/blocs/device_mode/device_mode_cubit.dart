import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_mode_cubit.freezed.dart';
part 'device_mode_state.dart';

class DeviceModeCubit extends Cubit<DeviceModeState> {
  DeviceModeCubit()
      : super(const DeviceModeState.phone(
            DeviceModeStateEntity(orientation: Orientation.portrait)));

  void setPhone() => emit(const DeviceModeState.phone(
      DeviceModeStateEntity(orientation: Orientation.portrait)));
  void setTablet() => emit(const DeviceModeState.tablet(
      DeviceModeStateEntity(orientation: Orientation.portrait)));
  void setDesktop() => emit(const DeviceModeState.desktop(
      DeviceModeStateEntity(orientation: Orientation.portrait)));
  void setLaptop() => emit(const DeviceModeState.laptop(
      DeviceModeStateEntity(orientation: Orientation.portrait)));

  void changeOrientation(Orientation orientation) => emit(state.when(
        phone: (s) => DeviceModeState.phone(
            DeviceModeStateEntity(orientation: orientation)),
        tablet: (s) => DeviceModeState.tablet(
            DeviceModeStateEntity(orientation: orientation)),
        laptop: (s) => DeviceModeState.laptop(
            DeviceModeStateEntity(orientation: orientation)),
        desktop: (s) => DeviceModeState.desktop(
            DeviceModeStateEntity(orientation: orientation)),
      ));
}
