part of 'device_mode_cubit.dart';

@freezed
class DeviceModeState with _$DeviceModeState {
  const factory DeviceModeState.phone(DeviceModeStateEntity settings) = _Phone;
  const factory DeviceModeState.tablet(DeviceModeStateEntity settings) =
      _Tablet;
  const factory DeviceModeState.laptop(DeviceModeStateEntity settings) =
      _Laptop;
  const factory DeviceModeState.desktop(DeviceModeStateEntity settings) =
      _Desktop;
}

class DeviceModeStateEntity {
  const DeviceModeStateEntity({
    required this.orientation,
  });

  final Orientation orientation;
}
