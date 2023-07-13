import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:playground/src/core/constants/generic_devices.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

import '../../editor/blocs/device_mode/device_mode_cubit.dart';
import '../../editor/blocs/editor/editor_cubit.dart';

class CoordinatesControls extends StatefulWidget {
  const CoordinatesControls({
    super.key,
    required this.focusedNode,
    required this.onRectChanged,
    required this.initialValue,
    required this.screenSize,
  });

  final CNode focusedNode;
  final Rect initialValue;
  final Size screenSize;
  final Function(Rect rect) onRectChanged;

  @override
  State<CoordinatesControls> createState() => _CoordinatesControlsState();
}

class _CoordinatesControlsState extends State<CoordinatesControls> {
  /// This is a hack to prevent the text controllers from updating the
  /// rect when the user is moving the rect with the mouse.
  bool controlListenersEnabled = true;

  // These are used to avoid useless re-renderings when
  // user clicks on the text field (because TextEditingControllers calls the
  // listener when the text field is focused)
  String tempRightValue = '';
  String tempBottomValue = '';
  String tempLeftValue = '';
  String tempTopValue = '';
  String tempWidthValue = '';
  String tempHeightValue = '';

  final leftController = TextEditingController();
  final topController = TextEditingController();
  final rightController = TextEditingController();
  final bottomController = TextEditingController();
  final widthController = TextEditingController();
  final heightController = TextEditingController();

  _handleRectChanged() {
    if (!controlListenersEnabled) return;

    if (leftController.text == tempLeftValue &&
        topController.text == tempTopValue &&
        rightController.text == tempRightValue &&
        bottomController.text == tempBottomValue &&
        widthController.text == tempWidthValue &&
        heightController.text == tempHeightValue) return;

    widget.onRectChanged(
      Rect.fromLTWH(
        double.tryParse(leftController.text) ?? 0.0,
        double.tryParse(topController.text) ?? 0.0,
        double.tryParse(widthController.text) ?? 0.0,
        double.tryParse(heightController.text) ?? 0.0,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    updateControls(widget.initialValue);
    leftController.addListener(_handleRectChanged);
    topController.addListener(_handleRectChanged);
    widthController.addListener(_handleRectChanged);
    heightController.addListener(_handleRectChanged);
  }

  _handleRightControllerChanged(String v) {
    widthController.text = (widget.screenSize.width -
            (double.tryParse(leftController.text) ?? 0.0) -
            (double.tryParse(v) ?? 0.0))
        .toString();
    setState(() {});
    _handleRectChanged();
  }

  _handleBottomControllerChanged(String v) {
    heightController.text = (widget.screenSize.height -
            (double.tryParse(topController.text) ?? 0.0) -
            (double.tryParse(v) ?? 0.0))
        .toString();
    setState(() {});
    _handleRectChanged();
  }

  @override
  void dispose() {
    leftController.dispose();
    topController.dispose();
    rightController.dispose();
    bottomController.dispose();
    widthController.dispose();
    heightController.dispose();
    super.dispose();
  }

  void updateControls(Rect rect) {
    // Step 1: Update the text controllers with the new values
    leftController.text = rect.left.floorToDouble().toString();
    topController.text = rect.top.floorToDouble().toString();
    rightController.text =
        (widget.screenSize.width - rect.right.floorToDouble()).toString();
    bottomController.text =
        (widget.screenSize.height - rect.bottom.floorToDouble()).toString();
    widthController.text = rect.width.floorToDouble().toString();
    heightController.text = rect.height.floorToDouble().toString();

    // Step 2: Move the cursor to the end of the text
    leftController.selection = TextSelection.collapsed(
      offset: leftController.text.length,
    );
    topController.selection = TextSelection.collapsed(
      offset: topController.text.length,
    );
    rightController.selection = TextSelection.collapsed(
      offset: rightController.text.length,
    );
    bottomController.selection = TextSelection.collapsed(
      offset: bottomController.text.length,
    );
    widthController.selection = TextSelection.collapsed(
      offset: widthController.text.length,
    );
    heightController.selection = TextSelection.collapsed(
      offset: heightController.text.length,
    );

    // Step 3: Update the temp values (used to avoid useless re-renderings)
    tempLeftValue = leftController.text;
    tempTopValue = topController.text;
    tempRightValue = rightController.text;
    tempBottomValue = bottomController.text;
    tempWidthValue = widthController.text;
    tempHeightValue = heightController.text;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceModeCubit, DeviceModeState>(
      builder: (context, state) {
        final deviceType = state.when(
          phone: (s) => Devices.ios.iPhone13.identifier.type,
          tablet: (s) => Devices.ios.iPadPro11Inches.identifier.type,
          laptop: (s) => laptopInfo.identifier.type,
          desktop: (s) => desktopInfo.identifier.type,
        );
        return BlocListener<EditorCubit, EditorState>(
          listener: (context, state) {
            final stateVal = state.when(
              loading: () => null,
              loaded: (e) => e,
              error: (_) => null,
            );
            if (stateVal != null &&
                stateVal.focusedNode?.id == widget.focusedNode.id) {
              controlListenersEnabled = false;
              updateControls(stateVal.focusedNode!.rect(deviceType));
              controlListenersEnabled = true;
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: TDetailLabel('Left'),
                  ),
                  Gap(Grid.small),
                  Expanded(
                    child: TDetailLabel('Top'),
                  ),
                ],
              ),
              const Gap(4),
              Row(
                children: [
                  Expanded(
                    child: ThetaTextField(
                      controller: leftController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Gap(Grid.small),
                  Expanded(
                    child: ThetaTextField(
                      controller: topController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const Gap(Grid.small),
              const Row(
                children: [
                  Expanded(
                    child: TDetailLabel('Right'),
                  ),
                  Gap(Grid.small),
                  Expanded(
                    child: TDetailLabel('Bottom'),
                  ),
                ],
              ),
              const Gap(4),
              Row(
                children: [
                  Expanded(
                    child: ThetaTextField(
                      controller: rightController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                      onChanged: _handleRightControllerChanged,
                    ),
                  ),
                  const Gap(Grid.small),
                  Expanded(
                    child: ThetaTextField(
                      controller: bottomController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                      onChanged: _handleBottomControllerChanged,
                    ),
                  ),
                ],
              ),
              const Gap(Grid.small),
              const Row(
                children: [
                  Expanded(
                    child: TDetailLabel('Width'),
                  ),
                  Gap(Grid.small),
                  Expanded(
                    child: TDetailLabel('Height'),
                  ),
                ],
              ),
              const Gap(4),
              Row(
                children: [
                  Expanded(
                    child: ThetaTextField(
                      controller: widthController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const Gap(Grid.small),
                  Expanded(
                    child: ThetaTextField(
                      controller: heightController,
                      placeholder: '',
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
