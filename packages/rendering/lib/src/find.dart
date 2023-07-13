import 'package:collection/collection.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';

class FindNodeRendering {
  const FindNodeRendering();

  CNode? findParent({
    required final List<CNode> flatList,
    required final NodeID parentID,
  }) =>
      flatList.firstWhereOrNull((element) => element.id == parentID);

  List<CNode> findParentsOfElement({
    required final List<CNode> flatList,
    required final CNode element,
  }) {
    if (element.parentID == null) return [];
    final nodes = <CNode>[];
    final node = findParent(flatList: flatList, parentID: element.parentID!);
    if (node == null) return [];
    nodes.add(node);
    var index = 0;
    do {
      if (nodes.last.parentID == null) break;
      final node =
          findParent(flatList: flatList, parentID: nodes.last.parentID!);
      if (node == null) break;
      nodes.add(node);
      index++;
    } while (index < 3 && nodes.isNotEmpty);
    return nodes;
  }

  bool findIfNodeIsChildInTree(
    final CNode? proposedParent,
    final CNode proposedChild,
  ) {
    final children = const NodeRendering().findAllChildren(proposedParent);
    if (children.contains(proposedChild)) {
      return true;
    }
    return false;
  }

  CNode? findTopComponent(List<CNode> nodes, NodeID nodeID) {
    final topComponents = nodes
        .where((element) => (element.type == NType.component ||
            element.type == NType.teamComponent))
        .toList();
    for (final component in topComponents) {
      final result = _findComponentRecursively(component, nodeID);
      if (result != null) {
        return component;
      }
    }
    return null;
  }

  CNode? _findComponentRecursively(CNode component, NodeID nodeID) {
    if (component.id == nodeID) {
      return component;
    }

    for (final node in component.componentChildren) {
      if (node.type == NType.component || node.type == NType.teamComponent) {
        final result = _findComponentRecursively(node, nodeID);
        if (result != null) {
          return result;
        }
      } else if (node.id == nodeID) {
        return node;
      }
    }
    return null;
  }
}
