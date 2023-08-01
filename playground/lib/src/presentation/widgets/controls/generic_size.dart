import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../editor/blocs/device_mode/device_mode_cubit.dart';
import '../expandable_container.dart';

class GenericSizeControls extends StatefulWidget {
  const GenericSizeControls({
    super.key,
    required this.initialValue,
    required this.title,
    required this.onSizeChanged,
  });

  final FSize initialValue;
  final String title;
  final Function(FSize size) onSizeChanged;

  @override
  State createState() => _GenericSizeControlsState();
}

class _GenericSizeControlsState extends State<GenericSizeControls> {
  final sizeController = TextEditingController();
  late FSize size;

  @override
  void initState() {
    super.initState();
    load();
    sizeController.addListener(() {
      if (sizeController.text.trim().isEmpty) return;
      updateDeviceBasedSize(context);
      widget.onSizeChanged(size);
    });
  }

  @override
  void dispose() {
    sizeController.dispose();
    super.dispose();
  }

  void load() {
    size = widget.initialValue;

    final (dbWidth) = readDeviceBasedSize(context);
    sizeController.text = dbWidth ?? '0';
  }

  bool _handleListenWhen(DeviceModeState previous, DeviceModeState current) {
    if (previous == current) return false;
    final previousDeviceType = previous.when(
      phone: (s) => Devices.ios.iPhone13.identifier.type,
      tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
      laptop: (s) => laptopInfo.identifier.type,
      desktop: (s) => desktopInfo.identifier.type,
    );
    final currentDeviceType = current.when(
      phone: (s) => Devices.ios.iPhone13.identifier.type,
      tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
      laptop: (s) => laptopInfo.identifier.type,
      desktop: (s) => desktopInfo.identifier.type,
    );
    return previousDeviceType != currentDeviceType;
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableContainer(
      title: widget.title,
      child: BlocConsumer<DeviceModeCubit, DeviceModeState>(
        listener: (_, __) => load(),
        listenWhen: _handleListenWhen,
        builder: (context, state) {
          return ThetaTextField(
            controller: sizeController,
            placeholder: '',
            keyboardType: TextInputType.number,
          );
        },
      ),
    );
  }

  String? readDeviceBasedSize(BuildContext context) {
    final deviceType = context.read<DeviceModeCubit>().state.when(
          phone: (s) => Devices.ios.iPhone13.identifier.type,
          tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
          laptop: (s) => laptopInfo.identifier.type,
          desktop: (s) => desktopInfo.identifier.type,
        );
    if (deviceType == DeviceType.phone) {
      return size.size;
    } else if (deviceType == DeviceType.tablet) {
      return size.sizeTablet;
    } else {
      return size.sizeDesktop;
    }
  }

  void updateDeviceBasedSize(BuildContext context) {
    String sizeVal = sizeController.text.trim();
    final deviceType = context.read<DeviceModeCubit>().state.when(
          phone: (s) => Devices.ios.iPhone13.identifier.type,
          tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
          laptop: (s) => laptopInfo.identifier.type,
          desktop: (s) => desktopInfo.identifier.type,
        );

    if (deviceType == DeviceType.phone) {
      size = size.copyWith(size: sizeVal);
    } else if (deviceType == DeviceType.tablet) {
      size = size.copyWith(sizeTablet: sizeVal);
    } else {
      size = size.copyWith(sizeDesktop: sizeVal);
    }
  }
}
