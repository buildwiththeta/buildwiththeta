import 'package:collection/collection.dart';
import 'package:theta_models/src/widgets/nodes/children_enum.dart';
import 'package:theta_models/src/widgets/nodes/node.dart';
import 'package:theta_models/src/widgets/nodes/node_type.dart';

class NodeRendering {
  const NodeRendering();

  CNode buildTree(List<CNode> list, String nodeId, String? parent) {
    final node = list.firstWhereOrNull((n) => n.id == nodeId);

    if (node == null) {
      throw Exception('Node with id $nodeId not found in the list');
    }

    if (node.intrinsicState.canHave == ChildrenEnum.children) {
      final children = node.childrenIds.ids.map((childId) {
        return buildTree(list, childId, nodeId);
      }).toList();
      return node.copyWith(children: children, parent: parent);
    } else if (node.intrinsicState.canHave == ChildrenEnum.child) {
      if (node.childrenIds.ids.isNotEmpty) {
        final child = buildTree(list, node.childrenIds.ids.first, nodeId);
        return node.copyWith(child: child, parent: parent);
      }
    }
    return node.copyWith(parent: parent);
  }

  CNode renderTree(final List<CNode> list) {
    // Find the scaffold node in the unordered list
    CNode? scaffold;
    final scaffoldNodes = list.where((node) => node.type == NType.scaffold);

    /// If there are no scaffold nodes, throw an exception
    if (scaffoldNodes.isEmpty) {
      throw Exception('No scaffold node found in the list');
    }

    /// If there are multiple scaffold nodes, use the first one that has children
    /// or the first one if none of them have children
    if (scaffoldNodes.length > 1) {
      scaffold = scaffoldNodes.firstWhereOrNull(
              (element) => element.childrenIds.ids.isNotEmpty) ??
          scaffoldNodes.first;
    }

    /// If there is only one scaffold node, use it
    if (scaffoldNodes.length == 1) {
      scaffold = scaffoldNodes.first;
    }

    // Build the tree recursively starting from the scaffold node
    return buildTree(list, scaffold!.id, null);
  }

  List<CNode> renderFlatList(final CNode scaffold) {
    final nodes = findAllChildren(scaffold);
    return nodes
        .toSet()
        .toList(); // Remove duplicates by converting to a Set and back to List
  }

  List<CNode> findAllChildren(CNode? node) {
    if (node == null) return [];

    final nodes = <CNode>[node];

    if (node.child != null) {
      nodes.addAll(findAllChildren(node.child));
    }

    if (node.children != null) {
      for (var child in node.children!) {
        nodes.addAll(findAllChildren(child));
      }
    }

    return nodes;
  }
}
