import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart' hide NodeProperties;

import '../../../../widgets/controls/freeform_controls.dart';
import '../../../../widgets/controls/node_info.dart';
import 'nodes/align_node_tab.dart';
import 'nodes/component_node_tab.dart';
import 'nodes/container_node_tab.dart';
import 'nodes/flex_node_tab.dart';
import 'nodes/icon_node_tab.dart';
import 'nodes/image_node_tab.dart';
import 'nodes/listview_node_tab.dart';
import 'nodes/text_node_tab.dart';

class NodeTab extends StatelessWidget {
  const NodeTab(
      {super.key,
      required this.focusedNode,
      this.focusedNodeParent,
      required this.oldFocusedNode});

  final CNode focusedNode;
  final CNode? focusedNodeParent;
  final CNode oldFocusedNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NodeProperties(
          key: ValueKey('NodeProperties ${focusedNode.id}'),
          focusedNode: focusedNode,
        ),
        FreeFormControls(
            key: ValueKey('FreeFormControls ${focusedNode.id}'),
            focusedNode: focusedNode),
        if (focusedNode.type == NType.align)
          AlignNodeTab(
            key: ValueKey('AlignNodeTab ${focusedNode.id}'),
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.container)
          ContainerNodeTab(
            key: ValueKey(
                'ContainerNodeTab ${focusedNode.id}  ${focusedNodeParent!.id}'),
            focusedNode: focusedNode,
            focusedNodeParent: focusedNodeParent!,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.text)
          TextNodeTab(
            key: ValueKey('TextNodeTab ${focusedNode.id}'),
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.row)
          FlexNodeTab(
            key: ValueKey('RowNodeTab ${focusedNode.id}'),
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.column)
          FlexNodeTab(
            key: ValueKey('ColumnNodeTab ${focusedNode.id}'),
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.image)
          ImageNodeTab(
            key: ValueKey(
                'ImageNodeTab ${focusedNode.id}  ${focusedNodeParent!.id}'),
            focusedNode: focusedNode,
            focusedNodeParent: focusedNodeParent!,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.icon)
          IconNodeTab(
            key: ValueKey('IconNodeTab ${focusedNode.id}'),
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.listView)
          ListViewNodeTab(
            key: ValueKey('CollectionNodeTab ${focusedNode.id}'),
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          ),
        if (focusedNode.type == NType.component)
          ComponentNodeTab(
            focusedNode: focusedNode,
            oldFocusedNode: oldFocusedNode,
          )
      ],
    );
  }
}
