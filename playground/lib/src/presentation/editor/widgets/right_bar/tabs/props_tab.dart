import 'package:device_frame/device_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../widgets/controls/rotation.dart';
import '../../../../widgets/controls/spacing.dart';
import '../../../../widgets/controls/visibility.dart';
import '../../../../widgets/spacing_input_field.dart';
import '../../../blocs/device_mode/device_mode_cubit.dart';
import '../../../blocs/editor/editor_cubit.dart';

class PropsTab extends StatelessWidget {
  const PropsTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  void updateNode(BuildContext context, CNode node) {
    final editorCubit = context.read<EditorCubit>();
    editorCubit.updateNodeAttributes(node, oldFocusedNode);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Spacing
        BlocBuilder<DeviceModeCubit, DeviceModeState>(
          builder: (context, state) {
            final deviceType = state.when(
              phone: (s) => DeviceType.phone,
              tablet: (s) => DeviceType.tablet,
              laptop: (s) => DeviceType.laptop,
              desktop: (s) => DeviceType.desktop,
            );
            return SpacingControls(
              node: focusedNode,
              onSpacingChanged: (type, top, bottom, left, right) {
                var margins =
                    focusedNode.getAttributes[DBKeys.margins] as FMargins;
                if (deviceType == DeviceType.phone) {
                  margins = margins.copyWith(
                    margins: [right, top, left, bottom],
                  );
                } else if (deviceType == DeviceType.tablet) {
                  margins = margins.copyWith(
                    marginsTablet: [right, top, left, bottom],
                  );
                } else {
                  margins = margins.copyWith(
                    marginsDesktop: [right, top, left, bottom],
                  );
                }
                focusedNode.setAttribute(
                    type == SpacingType.margin
                        ? DBKeys.margins
                        : DBKeys.padding,
                    margins);
                updateNode(context, focusedNode);
              },
            );
          },
        ),
        // Rotation
        RotationControls(
          node: focusedNode,
          onRotationChanged: (rotation) {
            focusedNode.setAttribute(
                DBKeys.rotation, FTextTypeInput(value: rotation.toString()));
            updateNode(context, focusedNode);
          },
        ),
        // Visibility
        VisibilityControls(
          node: focusedNode,
          onVisibilityChanged: (
            visible,
            visibleOnMobile,
            visibleOnTablet,
            visibleOnLaptop,
            visibleOnDesktop,
          ) {
            focusedNode
              ..setAttribute(DBKeys.visibility, visible)
              ..setAttribute(DBKeys.visibleOnMobile, visibleOnMobile)
              ..setAttribute(DBKeys.visibleOnTablet, visibleOnTablet)
              ..setAttribute(DBKeys.visibleOnLaptop, visibleOnLaptop)
              ..setAttribute(DBKeys.visibleOnDesktop, visibleOnDesktop);
            updateNode(context, focusedNode);
          },
        ),
        // Traslation
        /*TraslationControls(
          node: focusedNode,
          onTraslationChanged: (x, y) {
            focusedNode.setAttribute(DBKeys.xTranslation, x);
            focusedNode.setAttribute(DBKeys.yTranslation, y);
            updateNode(context, focusedNode);
          },
        ),*/
      ],
    );
  }
}
