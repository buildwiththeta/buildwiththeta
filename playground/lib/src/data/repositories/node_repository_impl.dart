import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:playground/src/data/datasources/node_service.dart';
import 'package:playground/src/data/models/add_node_between_response.dart';
import 'package:playground/src/data/models/add_node_response.dart';
import 'package:playground/src/data/models/delete_node_response.dart';
import 'package:playground/src/domain/repositories/node_repository.dart';
import 'package:theta_models/theta_models.dart';

/// Repo for nodes actions
class NodeRepositoryImpl implements NodeRepository {
  const NodeRepositoryImpl(this.nodeService);

  final NodeService nodeService;

  /// Add a new node
  @override
  Future<Either<Exception, AddNodeResponse>> add({
    required final CNode newNode,
    required final NodeID parentID,
    required final PageID pageId,
    required final int? customIndex,
  }) async {
    try {
      final res = await nodeService.add(
        newNode: newNode,
        parentID: parentID,
        pageId: pageId,
        customIndex: customIndex,
      );
      return Right(res);
    } catch (e) {
      return Left(e as Exception);
    }
  }

  /// Add a new node between other nodes
  @override
  Future<Either<Exception, AddNodeBetweenResponse>> addBetween(
      {required final CNode newNode,
      required final CNode parentChild,
      required final NodeID parentID,
      required final PageID pageID}) async {
    try {
      final res = await nodeService.addBetween(
        newNode: newNode,
        parentChild: parentChild,
        parentID: parentID,
        pageID: pageID,
      );
      return Right(res);
    } catch (e) {
      return Left(e as Exception);
    }
  }

  /// Remove an existing node between a parent and a child.
  @override
  Future<Either<Exception, CNode>> removeNodeBetweenNodes(
      {required CNode node, required CNode nodeChild}) async {
    try {
      final res = await nodeService.removeNodeBetweenNodes(
        node: node,
        nodeChild: nodeChild,
      );
      return Right(res);
    } catch (e) {
      return Left(e as Exception);
    }
  }

  /// Delete a node
  @override
  Future<Either<Exception, DeleteNodeResponse>> deleteNode(
      {required CNode node, required CNode parent}) async {
    try {
      final res = await nodeService.deleteNode(
        node: node,
        parent: parent,
      );
      return Right(res);
    } catch (e) {
      return Left(e as Exception);
    }
  }
}
