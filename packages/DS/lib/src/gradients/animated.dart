import 'package:flutter/material.dart';

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return const RepaintBoundary(
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child:
            null, /*PlasmaRenderer(
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
        ),*/
      ),
    );
  }
}
