import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';
import '../../../../../../core/constants/icon_library_dbkey_map.dart';
import '../../../../../widgets/controls/fill/icon_fill.dart';
import '../../../../../widgets/controls/icon/icon.dart';
import '../../../../../widgets/controls/icon_size.dart';
import '../../../../blocs/editor/editor_cubit.dart';

class IconNodeTab extends StatelessWidget {
  const IconNodeTab(
      {super.key, required this.focusedNode, required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconControl(
          node: focusedNode,
          onIconChanged: (library, icon) {
            focusedNode.setAttribute(
              iconLibraryDbKeyMap[library] ?? DBKeys.icon,
              icon,
            );

            // Remove other icon libraries
            for (final key in iconLibraryDbKeyMap.keys) {
              if (key != library) {
                focusedNode.setAttribute(iconLibraryDbKeyMap[key]!, null);
              }
            }
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
        IconFillControl(
          node: focusedNode,
          onFillChanged: (fill) {
            focusedNode.setAttribute(DBKeys.fill, fill);
            context
                .read<EditorCubit>()
                .updateNodeAttributes(focusedNode, oldFocusedNode);
          },
        ),
        IconSizeControls(
            node: focusedNode,
            onSizeChanged: (size) {
              focusedNode.setAttribute(DBKeys.width, size);
              context
                  .read<EditorCubit>()
                  .updateNodeAttributes(focusedNode, oldFocusedNode);
            }),
      ],
    );
  }
}
