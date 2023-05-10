// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:
// Project imports:
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';

class FindNodeRendering {
  const FindNodeRendering();

  CNode? findParentByChildrenIds({
    required final List<CNode> flatList,
    required final NodeID nodeID,
  }) {
    CNode? parent;
    for (final node in flatList) {
      if (node.childrenIds.ids.contains(nodeID)) {
        parent = node;
        break;
      }
    }
    return parent;
  }

  CNode? findParentByParentID({
    required final List<CNode> flatList,
    required final NodeID parentId,
  }) =>
      flatList.firstWhere((e) => e.id == parentId);

  List<CNode> findParentsOfElement({
    required final List<CNode> flatList,
    required final CNode element,
  }) {
    final nodes = <CNode>[];
    final node =
        findParentByChildrenIds(flatList: flatList, nodeID: element.id);
    if (node == null) return [];
    nodes.add(node);
    var index = 0;
    do {
      final node =
          findParentByChildrenIds(flatList: flatList, nodeID: nodes.last.id);
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
}
