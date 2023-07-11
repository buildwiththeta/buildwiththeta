import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../widgets/controls/border_radius.dart';
import '../../../../../widgets/controls/box_fit.dart';
import '../../../../../widgets/controls/shadow.dart';
import '../../../../../widgets/controls/sizes.dart';
import '../../../../../widgets/controls/text_value.dart';
import '../../../../blocs/device_mode/device_mode_cubit.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class ImageNodeTab extends StatelessWidget {
  const ImageNodeTab(
      {super.key,
      required this.focusedNode,
      required this.focusedNodeParent,
      required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode focusedNodeParent;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextValueControls(
          title: 'Image URL',
          initialValue: focusedNode.getAttributes[DBKeys.image],
          deviceType: DeviceType.phone,
          onTextChanged: (value) {
            focusedNode.setAttribute(DBKeys.image, value);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
        BoxFitControls(
          boxFit: focusedNode.getAttributes[DBKeys.boxFit] as FBoxFit? ??
              const FBoxFit(),
          onBoxFitChanged: (fit) {
            focusedNode.setAttribute(DBKeys.boxFit, fit);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
        if (focusedNodeParent.type != NType.scaffold)
          SizesControls(
              node: focusedNode,
              onSizeChanged: (width, height) {
                focusedNode
                  ..setAttribute(DBKeys.width, width)
                  ..setAttribute(DBKeys.height, height);
                context
                    .read<EditorCubit>()
                    .updateNodeAttributes(focusedNode, oldFocusedNode);
              }),
        BlocBuilder<DeviceModeCubit, DeviceModeState>(
          builder: (context, state) {
            final deviceType = state.when(
              phone: (s) => DeviceType.phone,
              tablet: (s) => DeviceType.tablet,
              laptop: (s) => DeviceType.desktop,
              desktop: (s) => DeviceType.desktop,
            );
            return BorderRadiusControls(
              node: focusedNode,
              deviceType: deviceType,
              onBorderRadiusChanged:
                  (topLeft, topRight, bottomRight, bottomLeft) {
                var borderRadius = focusedNode
                    .getAttributes[DBKeys.borderRadius] as FBorderRadius;
                if (deviceType == DeviceType.phone) {
                  borderRadius = borderRadius.copyWith(
                    radiusMobile: [topLeft, topRight, bottomRight, bottomLeft],
                  );
                } else if (deviceType == DeviceType.tablet) {
                  borderRadius = borderRadius.copyWith(
                    radiusTablet: [topLeft, topRight, bottomRight, bottomLeft],
                  );
                } else {
                  borderRadius = borderRadius.copyWith(
                    radiusDesktop: [topLeft, topRight, bottomRight, bottomLeft],
                  );
                }
                focusedNode.setAttribute(DBKeys.borderRadius, borderRadius);
                context
                    .read<EditorCubit>()
                    .updateNodeAttributes(focusedNode, oldFocusedNode);
              },
            );
          },
        ),
        ShadowControls(
          node: focusedNode,
          onShadowChanged: (shadow) {
            focusedNode.setAttribute(DBKeys.shadows, shadow);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
      ],
    );
  }
}
