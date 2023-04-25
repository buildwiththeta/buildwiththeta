// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:sa3_liquid/liquid/plasma/plasma.dart';
import 'package:theta_design_system/theta_design_system.dart';

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return const RepaintBoundary(
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: PlasmaRenderer(
          fps: 50,
          color: Palette.purple,
          blur: 0.36,
          size: 1.33,
          speed: 5.75,
          blendMode: BlendMode.difference,
          child: PlasmaRenderer(
            fps: 50,
            color: Palette.blue,
            blur: 0.79,
            size: 0.87,
            blendMode: BlendMode.lighten,
          ),
        ),
      ),
    );
  }
}
