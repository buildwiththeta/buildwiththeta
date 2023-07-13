import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class TreeListDraggableWidget extends StatelessWidget {
  const TreeListDraggableWidget(
      {super.key,
      required this.data,
      required this.feedback,
      required this.child});

  final DragTargetMoveSingleNodeModel data;
  final Widget feedback;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Draggable<DragTargetModel>(
      data: data,
      feedback: feedback,
      child: child,
    );
  }
}
