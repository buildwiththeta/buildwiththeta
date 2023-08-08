import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:playground/src/data/models/add_node_between_response.dart';
import 'package:playground/src/data/models/add_node_response.dart';
import 'package:playground/src/data/models/delete_node_response.dart';
import 'package:theta_models/theta_models.dart';

/// Repo for nodes actions
abstract class NodeRepository {
  const NodeRepository();

  /// Add a new node
  Future<Either<Exception, AddNodeResponse>> add({
    required final CNode newNode,
    required final NodeID parentID,
    required final PageID pageId,
    required final double? customIndex,
  });

  /// Add a new node between other nodes
  Future<Either<Exception, AddNodeBetweenResponse>> addBetween(
      {required final CNode newNode,
      required final CNode parentChild,
      required final NodeID parentID,
      required final PageID pageID});

  /// Remove an existing node between a parent and a child.
  Future<Either<Exception, CNode>> removeNodeBetweenNodes(
      {required CNode node, required CNode nodeChild});

  /// Delete a node
  Future<Either<Exception, DeleteNodeResponse>> deleteNode(
      {required CNode node, required CNode parent});
}
