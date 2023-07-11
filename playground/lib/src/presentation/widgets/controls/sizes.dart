import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../editor/blocs/device_mode/device_mode_cubit.dart';
import '../expandable_container.dart';

class SizesControls extends StatefulWidget {
  const SizesControls({
    super.key,
    required this.node,
    required this.onSizeChanged,
  });

  final CNode node;
  final Function(FSize width, FSize height) onSizeChanged;

  @override
  State createState() => _SizesControlsState();
}

class _SizesControlsState extends State<SizesControls> {
  final widthController = TextEditingController();
  final heightController = TextEditingController();
  late FSize width;
  late FSize height;

  @override
  void initState() {
    super.initState();
    load();
    widthController.addListener(() {
      if (widthController.text.trim().isEmpty) return;
      updateDeviceBasedSize(context);
      widget.onSizeChanged(width, height);
    });
    heightController.addListener(() {
      if (heightController.text.trim().isEmpty) return;
      updateDeviceBasedSize(context);
      widget.onSizeChanged(width, height);
    });
  }

  @override
  void dispose() {
    widthController.dispose();
    heightController.dispose();
    super.dispose();
  }

  void load() {
    width =
        (widget.node.getAttributes[DBKeys.width] as FSize?) ?? FSize.ready();

    height =
        (widget.node.getAttributes[DBKeys.height] as FSize?) ?? FSize.ready();

    final (dbWidth, dbHeight) = readDeviceBasedSize(context);
    widthController.text = dbWidth ?? '0';
    heightController.text = dbHeight ?? '0';
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
      title: 'Size',
      child: BlocConsumer<DeviceModeCubit, DeviceModeState>(
        listener: (_, __) => load(),
        listenWhen: _handleListenWhen,
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const THeadline3('Width'),
                    const Gap(Grid.small),
                    ThetaTextField(
                      controller: widthController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              const Gap(Grid.small),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const THeadline3('Height'),
                    const Gap(Grid.small),
                    ThetaTextField(
                      controller: heightController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  (String?, String?) readDeviceBasedSize(BuildContext context) {
    final deviceType = context.read<DeviceModeCubit>().state.when(
          phone: (s) => Devices.ios.iPhone13.identifier.type,
          tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
          laptop: (s) => laptopInfo.identifier.type,
          desktop: (s) => desktopInfo.identifier.type,
        );
    if (deviceType == DeviceType.phone) {
      return (width.size, height.size);
    } else if (deviceType == DeviceType.tablet) {
      return (width.sizeTablet, height.sizeTablet);
    } else {
      return (width.sizeDesktop, height.sizeDesktop);
    }
  }

  void updateDeviceBasedSize(BuildContext context) {
    String widthVal = widthController.text.trim();
    String heightVal = heightController.text.trim();
    final deviceType = context.read<DeviceModeCubit>().state.when(
          phone: (s) => Devices.ios.iPhone13.identifier.type,
          tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
          laptop: (s) => laptopInfo.identifier.type,
          desktop: (s) => desktopInfo.identifier.type,
        );

    if (deviceType == DeviceType.phone) {
      height = height.copyWith(size: heightVal);
      width = width.copyWith(size: widthVal);
    } else if (deviceType == DeviceType.tablet) {
      height = height.copyWith(sizeTablet: heightVal);
      width = width.copyWith(sizeTablet: widthVal);
    } else {
      height = height.copyWith(sizeDesktop: heightVal);
      width = width.copyWith(sizeDesktop: widthVal);
    }
  }
}
