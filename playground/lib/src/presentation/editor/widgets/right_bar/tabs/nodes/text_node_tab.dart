import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../widgets/controls/fill/text_fill.dart';
import '../../../../../widgets/controls/text_max_lines.dart';
import '../../../../../widgets/controls/text_style.dart';
import '../../../../../widgets/controls/text_value.dart';
import '../../../../blocs/device_mode/device_mode_cubit.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class TextNodeTab extends StatelessWidget {
  const TextNodeTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<DeviceModeCubit, DeviceModeState>(
          builder: (context, state) {
            final deviceType = state.when(
              phone: (s) => DeviceType.phone,
              tablet: (s) => DeviceType.tablet,
              laptop: (s) => DeviceType.desktop,
              desktop: (s) => DeviceType.desktop,
            );
            return TextValueControls(
                key: ValueKey('text_value_controls $deviceType'),
                initialValue: focusedNode.getAttributes[DBKeys.value],
                deviceType: deviceType,
                onTextChanged: (value) {
                  focusedNode.setAttribute(DBKeys.value, value);
                  context
                      .read<EditorCubit>()
                      .updateNodeAttributes(focusedNode, oldFocusedNode);
                });
          },
        ),
        BlocBuilder<DeviceModeCubit, DeviceModeState>(
          builder: (context, state) {
            final deviceType = state.when(
              phone: (s) => DeviceType.phone,
              tablet: (s) => DeviceType.tablet,
              laptop: (s) => DeviceType.desktop,
              desktop: (s) => DeviceType.desktop,
            );
            return TextMaxLinesControls(
                key: ValueKey('text_max_lines_controls $deviceType'),
                initialValue: focusedNode.getAttributes[DBKeys.maxLines],
                deviceType: deviceType,
                onTextChanged: (value) {
                  focusedNode.setAttribute(DBKeys.maxLines, value);
                  context
                      .read<EditorCubit>()
                      .updateNodeAttributes(focusedNode, oldFocusedNode);
                });
          },
        ),
        TextFillControl(
          node: focusedNode,
          onFillChanged: (fill) {
            focusedNode.setAttribute(
                DBKeys.textStyle,
                (focusedNode.getAttributes[DBKeys.textStyle] as FTextStyle)
                    .copyWith(fill: fill));
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
        BlocBuilder<DeviceModeCubit, DeviceModeState>(
          builder: (context, state) {
            final deviceType = state.when(
              phone: (s) => DeviceType.phone,
              tablet: (s) => DeviceType.tablet,
              laptop: (s) => DeviceType.desktop,
              desktop: (s) => DeviceType.desktop,
            );
            return TextStyleControls(
              key: ValueKey('text_controls $deviceType'),
              node: focusedNode,
              deviceType: deviceType,
              onTextStyleChanged: (textStyle) {
                final newTextStyle = textStyle.copyWith(
                    fill: (focusedNode.getAttributes[DBKeys.textStyle]
                            as FTextStyle)
                        .fill);
                focusedNode.setAttribute(DBKeys.textStyle, newTextStyle);
                context
                    .read<EditorCubit>()
                    .updateNodeAttributes(focusedNode, oldFocusedNode);
              },
            );
          },
        ),
      ],
    );
  }
}
