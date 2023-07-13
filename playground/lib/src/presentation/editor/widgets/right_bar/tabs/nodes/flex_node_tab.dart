import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../widgets/controls/axis_alignment.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class FlexNodeTab extends StatelessWidget {
  const FlexNodeTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AxisControls(
          node: focusedNode,
          onAxisAlignmentChanged: (main, cross, mainAxisSize) {
            focusedNode.setAttribute(DBKeys.mainAxisAlignment, main);
            focusedNode.setAttribute(DBKeys.crossAxisAlignment, cross);
            focusedNode.setAttribute(DBKeys.mainAxisSize, mainAxisSize);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
      ],
    );
  }
}
