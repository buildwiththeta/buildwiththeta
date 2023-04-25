// Flutter imports:
// ignore_for_file: public_member_api_docs

// Dart imports:
import 'dart:async';
import 'dart:typed_data';

// Package imports:
import 'package:after_layout/after_layout.dart';
import 'package:cross_file/cross_file.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_design_system/theta_design_system.dart';
import 'package:theta_models/theta_models.dart';

class OpenWImage extends StatefulWidget {
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
  State<OpenWImage> createState() => _WImageState();
}

class _WImageState extends State<OpenWImage> with AfterLayoutMixin {
  dynamic result;
  Uint8List? bytes;
  bool isLoading = false;

  @override
  FutureOr<void> afterFirstLayout(final BuildContext context) {
    setState(() {
      result = widget.image.getImage(
        state: TreeGlobalState.state,
        context: context,
        loop: widget.nodeState.loop,
      );
    });
    if (result is XFile) {
      calc();
    }
  }

  Future<void> calc() async {
    if (bytes == null) {
      final b = await (result as XFile).readAsBytes();
      setState(() {
        result = result;
        bytes = b;
      });
    }
  }

  @override
  Widget build(final BuildContext context) {
    final state = TreeGlobalState.state;
    if (isLoading) {
      return SizedBox(
        width: widget.width.get(
          state: state,
          context: context,
          isWidth: true,
        ),
        height: widget.height.get(
          state: state,
          context: context,
          isWidth: false,
        ),
        child: const CircularProgressIndicator(),
      );
    }

    return ClipRRect(
      borderRadius: widget.borderRadius.get(
        context,
        forPlay: state.forPlay,
        deviceType: state.deviceType,
      ),
      child: SizedBox(
        width: widget.width.get(
          state: state,
          context: context,
          isWidth: true,
        ),
        height: widget.height.get(
          state: state,
          context: context,
          isWidth: false,
        ),
        child: _LocalImage(
          key: ValueKey('Image ${widget.nodeState.node.id} $bytes $result'),
          nid: widget.nodeState.node.id,
          result: result,
          bytes: bytes,
          loop: widget.nodeState.loop,
          width: widget.width.get(
            state: state,
            context: context,
            isWidth: true,
          ),
          height: widget.height.get(
            state: state,
            context: context,
            isWidth: false,
          ),
          fit: widget.boxFit.fit,
        ),
      ),
    );
  }
}

class _LocalImage extends StatefulWidget {
  const _LocalImage({
    required this.nid,
    required this.result,
    required this.bytes,
    required this.width,
    required this.height,
    required this.fit,
    required this.loop,
    final Key? key,
  }) : super(key: key);

  final int nid;
  final int? loop;
  final dynamic result;
  final Uint8List? bytes;
  final double? width, height;
  final BoxFit fit;

  @override
  State<_LocalImage> createState() => _LocalImageState();
}

class _LocalImageState extends State<_LocalImage> {
  @override
  Widget build(final BuildContext context) {
    return widget.result is XFile
        ? widget.bytes == null
            ? const SizedBox()
            : Image.memory(
                widget.bytes!,
                width: widget.width,
                height: widget.height,
                fit: widget.fit,
              )
        : CNetworkImage(
            nid: widget.nid,
            src: widget.result == ''
                ? 'https://ymvwltogicatbkjlaswo.supabase.co/storage/v1/object/public/assets/Frame%203.jpg'
                : '${widget.result}',
            loop: widget.loop ?? 0,
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
          );
  }
}
