import 'package:device_frame/device_frame.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_box_transform/flutter_box_transform.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playground/src/core/constants/projects.dart';
import 'package:playground/src/domain/usecases/add_node_between_usecase.dart';
import 'package:playground/src/domain/usecases/add_node_usecase.dart';
import 'package:playground/src/domain/usecases/delete_node_usecase.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_rendering/theta_rendering.dart';
import 'package:uuid/uuid.dart';

part 'editor_cubit.freezed.dart';
part 'editor_state.dart';

class EditorCubit extends Cubit<EditorState> {
  EditorCubit(
    this._addNodeUseCase,
    this._addNodeBetweenUseCase,
    this._deleteNodeUseCase,
  ) : super(const EditorState.loading());

  final AddNodeUseCase _addNodeUseCase;
  final AddNodeBetweenUseCase _addNodeBetweenUseCase;
  final DeleteNodeUseCase _deleteNodeUseCase;

  void loadProject() => emit(
        EditorState.loaded(
          EditorStateEntity(
            project: defaultProject,
            branch: defaultBranch,
            page: defaultPage,
            nodes: defaultNodes,
          ),
        ),
      );

  void _ifStateLoaded(Function(EditorStateEntity) func) {
    try {
      final s = state.maybeWhen(
        loaded: (s) => s.copyWith(),
        orElse: () => null,
      );
      if (s == null) return;
      func.call(s);
    } catch (e) {
      emit(EditorState.error(e.toString()));
    }
  }

  void _ifFocusNodeExists(Function(EditorStateEntity) func) {
    try {
      final s = state.maybeWhen(
        loaded: (s) => s.copyWith(),
        orElse: () => null,
      );
      if (s == null) return;
      if (s.focusedNode == null) return;
      func(s);
    } catch (e) {
      emit(EditorState.error(e.toString()));
    }
  }

  /// Use this function to trigger a re-render when a new node is added or a node is moved.
  Nodes renderFlatListFromTree(Nodes nodes) => const NodeRendering()
      .renderFlatList(const NodeRendering().renderTree(nodes));

  void updateNodeAttributes(
    CNode updatedNode,
    CNode oldNode, {
    bool isUndoRedo = false,
  }) =>
      _ifStateLoaded((state) {
        final nodes = [...state.nodes];
        final index = nodes.indexWhere((n) => n.id == updatedNode.id);
        nodes[index] = updatedNode.copyWith(updatedAt: DateTime.now());
        _emitState(state.copyWith(nodes: nodes));
      });

  void updateNodeRectProperties(
    NodeID nodeId,
    RectProperties rect, {
    bool isUndoRedo = false,
  }) =>
      _ifStateLoaded((state) {
        final nodes = [...state.nodes];
        final index = nodes.indexWhere((n) => n.id == nodeId);
        nodes[index] = nodes[index].copyWith(rectProperties: rect);
        _emitState(state.copyWith(nodes: nodes));
      });

  void _emitState(EditorStateEntity s) => emit(EditorState.loaded(s));

  void onNodeChanged(
    CNode node,
    UITransformResult result,
    DeviceType deviceType, {
    bool isUndoRedo = false,
    //Use result.oldRect to undo
    bool isUndoOldRec = false,
  }) =>
      _ifStateLoaded((state) {
        final nodes = [...state.nodes];
        final index = nodes.indexWhere((n) => n.id == node.id);
        nodes[index] = nodes[index].copyWith(
          updatedAt: DateTime.now(),
          rectProperties: nodes[index].getRectProperties.copyWith(
                rect: nodes[index]
                    .getRectProperties
                    .rect
                    .copyWithNewRectByDeviceType(deviceType,
                        isUndoOldRec ? result.oldRect : result.rect),
              ),
        );
        _emitState(state.copyWith(nodes: nodes));
      });

  void onNodeAdded({
    required CNode node,
    required NodeID parentID,
    required double? customIndex,
    required Offset? offset,
    bool isUndoRedo = false,
    VoidCallback? onCompleted,
  }) {
    var newNode = node.copyWith(id: const Uuid().v1());
    if (offset != null) {
      newNode = newNode.copyWith(
        rectProperties: newNode.setRect(
          Rect.fromLTWH(offset.dx, offset.dy, 150, 150),
          DeviceType.phone,
        ),
      );
    }
    _ifStateLoaded((state) {
      _addNodeUseCase(AddNodeUseCaseParams(
              pageId: 'a',
              parentID: parentID,
              newNode: newNode,
              customIndex: customIndex))
          .then((res) => res.fold(
                (l) => emit(EditorState.error(l.toString())),
                (r) {
                  final newNodes = [...state.nodes, r.addedNode];
                  final nodesTree = renderFlatListFromTree(newNodes);
                  _emitState(state.copyWith(
                    nodes: nodesTree,
                    focusedNodeIndex: newNodes.length - 1,
                  ));
                },
              ));
    });
  }

  void onNodeAddedBetween({
    required CNode node,
    required NodeID parentID,
    required CNode parentChild,
    required double? customIndex,
    bool isUndoRedo = false,
  }) =>
      _ifStateLoaded((state) {
        var newNode = node.copyWith(id: const Uuid().v1());
        if (isUndoRedo) {
          newNode = node;
        }
        _addNodeBetweenUseCase(AddNodeBetweenUseCaseParams(
          parentID: parentID,
          parentChild: parentChild,
          newNode: newNode,
          pageID: state.page.id,
        )).then((res) => res.fold(
              (l) => emit(EditorState.error(l.toString())),
              (r) {
                final res = renderFlatListFromTree([
                  ...state.nodes..removeWhere((e) => e.id == r.nodeChild.id),
                  r.node,
                  r.nodeChild
                ]);
                _emitState(state.copyWith(
                  nodes: res,
                  focusedNodeIndex: res.length - 1,
                ));
              },
            ));
      });

  CNode? getParent(NodeID? parentID) {
    if (parentID == null) return null;
    return state.maybeWhen(
      loaded: (s) => s.nodes.firstWhere((element) => element.id == parentID),
      orElse: () => null,
    );
  }

  void onFocusedNodeRemoved() => _ifFocusNodeExists((state) async {
        final parent = getParent(state.focusedNode!.parentID);
        if (parent == null) {
          emit(const EditorState.error(
              'Error deleting a node, parent is null.'));
          return;
        }
        _deleteNodeUseCase(DeleteNodeUseCaseParams(
          node: state.focusedNode!,
          parent: parent,
          pageId: state.page.id,
        )).then((res) => res.fold(
              (l) => emit(EditorState.error(l.toString())),
              (r) {
                final ids = [...r.deletedNodes, ...r.updatedNodes]
                    .map((e) => e.id)
                    .toList();
                final updatedNodes = [
                  ...state.nodes.where((e) => !ids.contains(e.id)),
                ];
                final lastNodes = [
                  ...updatedNodes,
                  ...r.updatedNodes,
                ];
                final nodesTree = renderFlatListFromTree(lastNodes);
                _emitState(state.copyWith(
                  nodes: nodesTree,
                  focusedNodeIndex: -1,
                ));
              },
            ));
      });

  void removeNodeById(NodeID nodeID, {bool isUndoRedo = false}) =>
      _ifStateLoaded((state) {
        final node = state.nodes.firstWhere((element) => element.id == nodeID);
        final parent = getParent(node.parentID);
        if (parent == null) {
          emit(const EditorState.error(
              'Error deleting a node, parent is null.'));
          return;
        }
        _deleteNodeUseCase(DeleteNodeUseCaseParams(
          node: node,
          parent: parent,
          pageId: state.page.id,
        )).then((res) => res.fold(
              (l) => emit(EditorState.error(l.toString())),
              (r) {
                final ids = [...r.deletedNodes, ...r.updatedNodes]
                    .map((e) => e.id)
                    .toList();
                final updatedNodes = [
                  ...state.nodes.where((e) => !ids.contains(e.id))
                ];
                final lastNodes = [...updatedNodes, ...r.updatedNodes];
                final nodesTree = renderFlatListFromTree(lastNodes);
                _emitState(state.copyWith(
                  nodes: nodesTree,
                  focusedNodeIndex: -1,
                ));
              },
            ));
      });

  void onNodeFocused(NodeID nodeID) => _ifStateLoaded((state) {
        _emitState(state.copyWith(
            focusedNodeIndex:
                state.nodes.indexWhere((element) => element.id == nodeID)));
      });

  void onNodeUnfocused() => _ifStateLoaded(
        (state) => _emitState(state.copyWith(focusedNodeIndex: -1)),
      );

  void onNodeHovered(NodeID nodeID) => _ifStateLoaded(
        (state) => _emitState(state.copyWith(
            hoveredNodeIndex:
                state.nodes.indexWhere((element) => element.id == nodeID))),
      );

  void onNodeUnhovered() => _ifStateLoaded(
        (state) => _emitState(state.copyWith(focusedNodeIndex: -1)),
      );

  void clearSelection() => _ifStateLoaded(
        (state) => _emitState(
            state.copyWith(focusedNodeIndex: -1, hoveredNodeIndex: -1)),
      );

  void moveFocusedNodeHorizontally(
          DeviceType type, double offset, Size screenSize) =>
      _ifFocusNodeExists((state) {
        final node = state.focusedNode!;
        final originalRect = node.rect(type);
        if (originalRect.left + offset < 0 ||
            originalRect.right + offset > screenSize.width + 1) {
          return;
        }
        updateNodeRectProperties(
            node.id,
            node.setRect(
                Rect.fromLTWH(originalRect.left + offset, originalRect.top,
                    originalRect.width, originalRect.height),
                type));
      });

  void moveFocusedNodeVertically(
          DeviceType type, double offset, Size screenSize) =>
      _ifFocusNodeExists((state) {
        final node = state.focusedNode!;
        final originalRect = node.rect(type);
        if (originalRect.top + offset < 0 ||
            originalRect.bottom + offset > screenSize.height + 1) {
          return;
        }
        updateNodeRectProperties(
            node.id,
            node.setRect(
                Rect.fromLTWH(originalRect.left, originalRect.top + offset,
                    originalRect.width, originalRect.height),
                type));
      });
}
