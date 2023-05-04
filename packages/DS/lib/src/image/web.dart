// Dart imports:
// ignore_for_file: public_member_api_docs

// ignore: avoid_web_libraries_in_flutter

// Dart imports:
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

// Flutter imports:
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class CNetworkImage extends StatefulWidget {
  const CNetworkImage({
    final Key? key,
    required this.src,
    this.loop = 0,
    this.width,
    this.height,
    this.fit,
  }) : super(key: key);

  final String src;
  final int loop;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  CNetworkImageState createState() => CNetworkImageState();
}

class CNetworkImageState extends State<CNetworkImage> {
  ImageElement? image;

  @override
  Widget build(final BuildContext context) {
    return ExtendedImage.network(
      '${Constants.backendTetaProxy}/${Uri.encodeComponent(widget.src)}',
      width: widget.width,
      height: widget.height,
      cacheWidth: widget.width?.toInt(),
      cacheHeight: widget.height?.toInt(),
      fit: widget.fit ?? BoxFit.cover,
    );
  }
}
