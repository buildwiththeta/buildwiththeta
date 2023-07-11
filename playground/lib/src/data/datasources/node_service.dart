import 'dart:async';

import 'package:playground/src/data/models/add_node_between_response.dart';
import 'package:playground/src/data/models/add_node_response.dart';
import 'package:playground/src/data/models/delete_node_response.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';
import 'package:uuid/uuid.dart';

/// Repo for nodes actions
class NodeService {
  const NodeService(
    this.findRendering,
  );

  final FindNodeRendering findRendering;

  /// Add a new node
  ///
  /// ❗️ This method should be wrapped in a try catch block.
  Future<AddNodeResponse> add({
    required final CNode newNode,
    required final NodeID parentID,
    required final PageID pageId,
    required final int? customIndex,
  }) async {
    final name = NodeType.name(newNode.type);
    return AddNodeResponse(
        addedNode: newNode.copyWith(
      name: name,
      id: const Uuid().v1(),
      parentID: parentID,
      childOrder: customIndex,
    ));
  }

  /// Add a new node between other nodes
  ///
  /// ❗️ This method should be wrapped in a try catch block.
  Future<AddNodeBetweenResponse> addBetween(
      {required final CNode newNode,
      required final CNode parentChild,
      required final NodeID parentID,
      required final PageID pageID}) async {
    final id = const Uuid().v1();
    return AddNodeBetweenResponse(
        node: newNode.copyWith(id: id, parentID: parentID),
        nodeChild: parentChild.copyWith(parentID: id));
  }

  /// Remove an existing node between a parent and a child.
  ///
  /// ❗️ This method should be wrapped in a try catch block.
  Future<CNode> removeNodeBetweenNodes(
          {required CNode node, required CNode nodeChild}) async =>
      nodeChild.copyWith(parentID: node.parentID);

  /// Delete a node
  ///
  /// ❗️ This method should be wrapped in a try catch block.
  Future<DeleteNodeResponse> deleteNode(
      {required CNode node, required CNode parent}) async {
    final deletedNodes = <CNode>[];
    final updatedNodes = <CNode>[];

    // Delete node
    deletedNodes.add(node);

    if (node.intrinsicState.canHave == ChildrenEnum.none) {
      return DeleteNodeResponse(
        deletedNodes: deletedNodes,
        updatedNodes: updatedNodes,
      );
    }

    // If node has a child, update it
    if (node.child != null) {
      updatedNodes.add(node.child!.copyWith(parentID: node.parentID));
    }

    // If node has children and parent can have children, update them
    if ((node.children ?? []).isNotEmpty &&
        parent.intrinsicState.canHaveChildren) {
      updatedNodes.addAll(node.children!
          .map((e) => e.copyWith(parentID: node.parentID))
          .toList());
    }

    // If node has children but parent can't have children, delete them
    if ((node.children ?? []).isNotEmpty &&
        !parent.intrinsicState.canHaveChildren) {
      deletedNodes.addAll(node.children!);
    }

    return DeleteNodeResponse(
      deletedNodes: deletedNodes,
      updatedNodes: updatedNodes,
    );
  }
}
