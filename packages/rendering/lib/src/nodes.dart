import 'package:collection/collection.dart';
import 'package:theta_models/theta_models.dart';

class NodeRendering {
  const NodeRendering();

  Nodes buildTree(List<CNode> list, String? parentID) {
    final nodes = list.where((n) => n.parentID == parentID).toList();

    // Sort nodes based on childOrder
    nodes.sort((a, b) => a.childOrder.compareTo(b.childOrder));

    Nodes children = [];
    for (var node in nodes) {
      if (node.intrinsicState.canHave == ChildrenEnum.children) {
        final children0 = buildTree(list, node.id);
        children.add(node.copyWith(
          children: children0,
          parentID: parentID,
        ));
      } else if (node.intrinsicState.canHave == ChildrenEnum.child) {
        final children0 = buildTree(list, node.id);
        children.add(node.copyWithOutChild(
            child: children0.isNotEmpty
                ? list.any((element) => element.id == children0.first.id)
                    ? children0.first
                    : null
                : null,
            parentID: parentID));
      } else {
        children.add(node.copyWith(parentID: parentID));
      }
    }

    return children;
  }

  CNode renderTree(final List<CNode> list) {
    // Build the tree recursively starting from the root node
    return buildTree(list, null).first;
  }

  List<CNode> renderFlatList(final CNode scaffold) {
    final nodes = findAllChildren(scaffold)
      ..sort((a, b) => a.childOrder.compareTo(b.childOrder));
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
