import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../editor/blocs/device_mode/device_mode_cubit.dart';
import '../../editor/blocs/editor/editor_cubit.dart';
import 'constraints.dart';
import 'coordinates.dart';
import 'positioning.dart';

class FreeFormControls extends StatefulWidget {
  const FreeFormControls({super.key, required this.focusedNode});

  final CNode focusedNode;

  @override
  State<FreeFormControls> createState() => _FreeFormControlsState();
}

class _FreeFormControlsState extends State<FreeFormControls> {
  late bool isFreeForm;

  @override
  void initState() {
    super.initState();
    final parent =
        context.read<EditorCubit>().getParent(widget.focusedNode.parentID);
    isFreeForm = parent?.type == NType.scaffold || parent?.type == NType.stack;
  }

  @override
  Widget build(BuildContext context) {
    if (!isFreeForm) return const SizedBox.shrink();
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return Padding(
      padding: EI.mdB,
      child: BlocBuilder<DeviceModeCubit, DeviceModeState>(
        builder: (context, state) {
          final deviceType = state.when(
            phone: (s) => Devices.ios.iPhone13.identifier.type,
            tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
            laptop: (s) => laptopInfo.identifier.type,
            desktop: (s) => desktopInfo.identifier.type,
          );
          final screenSize = state.when(
            phone: (s) => Devices.ios.iPhone13.screenSize,
            tablet: (s) => Devices.ios.iPadPro11Inches.screenSize,
            laptop: (s) => laptopInfo.screenSize,
            desktop: (s) => desktopInfo.screenSize,
          );
          final rect = widget.focusedNode.rect(deviceType);
          return Column(
            children: [
              BoxPositioningSectionControls(
                initialRectValue: rect,
                screenSize: screenSize,
                onRectChanged: (rect) {
                  context.read<EditorCubit>().updateNodeRectProperties(
                      widget.focusedNode.id,
                      widget.focusedNode.setRect(rect, deviceType));
                },
              ),
              const Gap(Grid.small),
              Divider(
                color: theme.bgGrey,
              ),
              const Gap(Grid.small),
              CoordinatesControls(
                focusedNode: widget.focusedNode,
                key: ValueKey(
                    'CoordinatesSectionControls, $deviceType ${widget.focusedNode.id}'),
                initialValue: rect,
                screenSize: screenSize,
                onRectChanged: (rect) {
                  context.read<EditorCubit>().updateNodeRectProperties(
                      widget.focusedNode.id,
                      widget.focusedNode.setRect(rect, deviceType));
                },
              ),
              const Gap(Grid.small),
              Divider(
                color: theme.bgGrey,
              ),
              const Gap(Grid.small),
              BoxResponsiveAlignSectionControls(
                onAlignmentsChanged: (v, h) {
                  var node = widget.focusedNode.setHorizontalAlignment(h);
                  node = node.setVerticalAlignment(v);
                  context.read<EditorCubit>().updateNodeRectProperties(
                      widget.focusedNode.id, node.getRectProperties);
                },
                onAlignmentsReseted: () {
                  if (deviceType == DeviceType.phone) return;
                  context.read<EditorCubit>().updateNodeRectProperties(
                      widget.focusedNode.id,
                      widget.focusedNode.resetRect(deviceType));
                },
                initialVerticalValue: widget.focusedNode.verticalAlignment,
                initialHorizontalValue: widget.focusedNode.horizontalAlignment,
              ),
            ],
          );
        },
      ),
    );
  }
}
