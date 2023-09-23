import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/elements/builders/box_transform.dart';

class OpenWStack extends StatelessWidget {
  const OpenWStack({
    super.key,
    required this.context,
    required this.state,
    required this.children,
  });

  final BuildContext context;
  final WidgetState state;
  final List<CNode> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        clipBehavior: Clip.none,
        children: children
            .map((final e) => BoxTransformBuilder(
                  node: e,
                  inStack: true,
                  screenSize: Size(constraints.maxWidth, constraints.maxHeight),
                ))
            .toList(),
      );
    });
  }
}
