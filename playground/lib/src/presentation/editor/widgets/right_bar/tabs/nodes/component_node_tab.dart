import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

import '../../../../../widgets/controls/overrides.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class ComponentNodeTab extends StatelessWidget {
  const ComponentNodeTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return OverridesControl(
      focusedNode: focusedNode,
      onOverrideChange: (ovs) {
        focusedNode.setAttribute(DBKeys.overrides, ovs);
        context
            .read<EditorCubit>()
            .updateNodeAttributes(focusedNode, oldFocusedNode);
      },
    );
  }
}
