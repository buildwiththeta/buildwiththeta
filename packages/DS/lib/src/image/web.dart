// Dart imports:
// ignore_for_file: public_member_api_docs

// ignore: avoid_web_libraries_in_flutter

// Dart imports:
// ignore: avoid_web_libraries_in_flutter

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_design_system/theta_design_system.dart';

class CNetworkImage extends StatelessWidget {
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
  Widget build(final BuildContext context) {
    return Image.network(
      '${Constants.backendTetaProxy}/${Uri.encodeComponent(src)}',
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
    );
  }
}
