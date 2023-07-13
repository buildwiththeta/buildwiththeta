import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../widgets/controls/align.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class AlignNodeTab extends StatelessWidget {
  const AlignNodeTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AlignControls(
          node: focusedNode,
          onAlignChanged: (align) {
            focusedNode.setAttribute(DBKeys.align, align);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
      ],
    );
  }
}
