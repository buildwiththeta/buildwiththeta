// Flutter imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:collection/collection.dart';
// Project imports:
import 'package:theta_models/src/widgets/nodes/node.dart';
import 'package:theta_rendering/theta_rendering.dart';

class FindNodeRendering {
  const FindNodeRendering();

  CNode? findParentByChildrenIds({
    required final List<CNode> flatList,
    required final CNode element,
  }) {
    CNode? parent;
    parent =
        flatList.firstWhereOrNull((final node) => node.id == element.parent);
    if (parent == null) {
      for (final node in flatList) {
        if (node.childrenIds.ids.isEmpty) {
          if (node.childrenIds.ids.contains(element.id)) {
            parent = node;
            break;
          }
        }
      }
    }
    return parent;
  }

  List<CNode> findParentsOfElement({
    required final List<CNode> flatList,
    required final CNode element,
  }) {
    final nodes = <CNode>[];
    final node = findParentByChildrenIds(flatList: flatList, element: element);
    if (node == null) return [];
    nodes.add(node);
    var index = 0;
    do {
      final node =
          findParentByChildrenIds(flatList: flatList, element: nodes.last);
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
