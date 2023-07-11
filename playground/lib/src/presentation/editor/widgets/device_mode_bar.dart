import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/assets.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:playground/src/core/enums/devices.dart';
import 'package:playground/src/presentation/editor/blocs/device_mode/device_mode_cubit.dart';
import 'package:theta_design_system/theta_design_system.dart';

class DeviceModeBar extends StatefulWidget {
  const DeviceModeBar({
    super.key,
    required this.onModeChanged,
  });

  final Function(DeviceMode mode) onModeChanged;

  @override
  State<DeviceModeBar> createState() => _DeviceModeBarState();
}

class _DeviceModeBarState extends State<DeviceModeBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<DeviceModeCubit, DeviceModeState>(
          builder: (context, state) {
            final screenSize = state.when(
              phone: (s) => Devices.ios.iPhone13.screenSize,
              tablet: (s) => Devices.ios.iPadPro11Inches.screenSize,
              laptop: (s) => laptopInfo.screenSize,
              desktop: (s) => desktopInfo.screenSize,
            );
            return SizedBox(
              width: 80,
              child: TParagraph(
                '${screenSize.width.toInt()} x ${screenSize.height.toInt()}',
                color: theme.txtPrimary60,
              ),
            );
          },
        ),
        const Gap(Grid.medium),
        BounceForSmallWidgets(
          message: 'Switch to mobile',
          onTap: () => widget.onModeChanged(DeviceMode.mobile),
          child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
            builder: (context, state) => SvgPicture.asset(
              AppAssets.iPhone,
              width: 16,
              height: 16,
              color: state.whenOrNull(phone: (s) => true) == true
                  ? theme.buttonColor
                  : theme.txtPrimary,
            ),
          ),
        ),
        const Gap(Grid.medium),
        BounceForSmallWidgets(
          message: 'Switch to tablet',
          onTap: () => widget.onModeChanged(DeviceMode.tablet),
          child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
            builder: (context, state) => SvgPicture.asset(
              AppAssets.iPad,
              width: 16,
              height: 16,
              color: state.whenOrNull(tablet: (s) => true) == true
                  ? theme.buttonColor
                  : theme.txtPrimary,
            ),
          ),
        ),
        const Gap(Grid.medium),
        BounceForSmallWidgets(
          message: 'Switch to laptop',
          onTap: () => widget.onModeChanged(DeviceMode.laptop),
          child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
            builder: (context, state) => SvgPicture.asset(
              AppAssets.laptop,
              width: 14,
              height: 14,
              color: state.whenOrNull(laptop: (s) => true) == true
                  ? theme.buttonColor
                  : theme.txtPrimary,
            ),
          ),
        ),
        const Gap(Grid.medium),
        BounceForSmallWidgets(
          message: 'Switch to desktop',
          onTap: () => widget.onModeChanged(DeviceMode.desktop),
          child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
            builder: (context, state) => SvgPicture.asset(
              AppAssets.display,
              width: 16,
              height: 16,
              color: state.whenOrNull(desktop: (s) => true) == true
                  ? theme.buttonColor
                  : theme.txtPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
