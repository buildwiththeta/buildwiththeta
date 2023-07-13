import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../widgets/controls/collection_type.dart';
import '../../../../../widgets/controls/cross_axis_count.dart';
import '../../../../../widgets/controls/grid_spacing.dart';
import '../../../../blocs/device_mode/device_mode_cubit.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class ListViewNodeTab extends StatelessWidget {
  const ListViewNodeTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CollectionTypeControl(
          isList: focusedNode.getAttributes[DBKeys.isListView] as bool,
          onCollectionTypeChanged: (value) {
            focusedNode.setAttribute(DBKeys.isListView, value);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
        if (!(focusedNode.getAttributes[DBKeys.isListView] as bool))
          BlocBuilder<DeviceModeCubit, DeviceModeState>(
            builder: (context, state) {
              final deviceType = state.when(
                phone: (s) => DeviceType.phone,
                tablet: (s) => DeviceType.tablet,
                laptop: (s) => DeviceType.laptop,
                desktop: (s) => DeviceType.desktop,
              );
              return Column(
                children: [
                  CrossAxisCountControl(
                    key: ValueKey(
                        'CrossAxisCountControl ${focusedNode.id} $deviceType'),
                    value: focusedNode.getAttributes[DBKeys.crossAxisCount],
                    deviceType: deviceType,
                    onCrossAxisCountChanged: (value) {
                      focusedNode.setAttribute(DBKeys.crossAxisCount, value);
                      context
                          .read<EditorCubit>()
                          .updateNodeAttributes(focusedNode, oldFocusedNode);
                    },
                  ),
                  GridSpacingControl(
                    key: ValueKey(
                        'GridSpacingControl Horizontal ${focusedNode.id} $deviceType'),
                    title: 'Horizontal Spacing',
                    value: focusedNode.getAttributes[DBKeys.crossAxisSpacing],
                    deviceType: deviceType,
                    onSpacingChanged: (value) {
                      focusedNode.setAttribute(DBKeys.crossAxisSpacing, value);
                      context
                          .read<EditorCubit>()
                          .updateNodeAttributes(focusedNode, oldFocusedNode);
                    },
                  ),
                  GridSpacingControl(
                    key: ValueKey(
                        'GridSpacingControl Vertical ${focusedNode.id} $deviceType'),
                    title: 'Vertical Spacing',
                    value: focusedNode.getAttributes[DBKeys.mainAxisSpacing],
                    deviceType: deviceType,
                    onSpacingChanged: (value) {
                      focusedNode.setAttribute(DBKeys.mainAxisSpacing, value);
                      context
                          .read<EditorCubit>()
                          .updateNodeAttributes(focusedNode, oldFocusedNode);
                    },
                  ),
                ],
              );
            },
          ),
      ],
    );
  }
}
