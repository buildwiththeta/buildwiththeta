// Dart imports:

// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';

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
      src,
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
    );
  }
}
