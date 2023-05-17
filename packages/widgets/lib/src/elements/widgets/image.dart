// Flutter imports:
// ignore_for_file: public_member_api_docs

// Dart imports:

// Package imports:
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';
import 'package:universal_platform/universal_platform.dart';

class OpenWImage extends StatelessWidget {
  /// Returns a Image
  const OpenWImage({
    super.key,
    required this.nodeState,
    required this.image,
    required this.width,
    required this.height,
    required this.boxFit,
    required this.borderRadius,
    required this.shadows,
  });

  final WidgetState nodeState;
  final FSize width;
  final FSize height;
  final FTextTypeInput image;
  final FBoxFit boxFit;
  final FBorderRadius borderRadius;
  final FShadow shadows;

  @override
  Widget build(final BuildContext context) {
    final state = context.watch<TreeState>();
    final img = image.getImage(
      state: state,
      context: context,
      loop: nodeState.loop,
    ) as String;
    final result = img.isNotEmpty
        ? img
        : 'https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/cover-min.png';
    return ClipRRect(
      borderRadius: borderRadius.get(
        context,
        forPlay: state.forPlay,
        deviceType: state.deviceType,
      ),
      child: SizedBox(
        width: width.get(
          state: state,
          context: context,
          isWidth: true,
        ),
        height: height.get(
          state: state,
          context: context,
          isWidth: false,
        ),

        child: UniversalPlatform.isWeb
            ? Image.network(
                '${Constants.backendTetaProxy}/${Uri.encodeComponent(result)}',
                width: width.get(state: state, context: context, isWidth: true),
                height:
                    height.get(state: state, context: context, isWidth: false),
                fit: boxFit.value,
              )
            : Image.network(
                result,
                width: width.get(state: state, context: context, isWidth: true),
                height:
                    height.get(state: state, context: context, isWidth: false),
                fit: boxFit.value,
              ),
      ),
    );
  }
}
