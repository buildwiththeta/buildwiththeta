// Flutter imports:
// ignore_for_file: public_member_api_docs

// Dart imports:

// Package imports:
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

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
    final result = image.getImage(
      state: state,
      context: context,
      loop: nodeState.loop,
    );
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
        child: CNetworkImage(
          src: result == ''
              ? 'https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/cover-min.png'
              : result,
          loop: nodeState.loop,
          width: width.get(state: state, context: context, isWidth: true),
          height: height.get(state: state, context: context, isWidth: false),
          fit: boxFit.value,
        ),
      ),
    );
  }
}

class _LocalImage extends StatefulWidget {
  const _LocalImage({
    required this.nid,
    required this.result,
    required this.width,
    required this.height,
    required this.fit,
    required this.loop,
    final Key? key,
  }) : super(key: key);

  final String nid;
  final int? loop;
  final String result;
  final double? width, height;
  final BoxFit fit;

  @override
  State<_LocalImage> createState() => _LocalImageState();
}

class _LocalImageState extends State<_LocalImage> {
  @override
  Widget build(final BuildContext context) {
    return CNetworkImage(
      src: widget.result == ''
          ? 'https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/cover-min.png'
          : widget.result,
      loop: widget.loop ?? 0,
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
    );
  }
}
