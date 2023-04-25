import 'package:flutter/material.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';

class BoxTransformBuilder extends StatelessWidget {
  const BoxTransformBuilder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (TreeGlobalState.state.forPlay) {
      return child;
    }
    return TransformableBox(
      contentBuilder: (context, rect, flip) {
        return child;
      },
    );
  }
}
