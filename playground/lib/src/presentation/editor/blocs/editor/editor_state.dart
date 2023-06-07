part of 'editor_cubit.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState.loading() = _Loading;
  const factory EditorState.loaded(EditorStateEntity editorState) = _Loaded;
  const factory EditorState.error(String errorMessage) = _Error;
}

class EditorStateEntity extends Equatable {
  const EditorStateEntity({
    required this.project,
    required this.branch,
    required this.page,
    required this.nodes,
    this.focusedNodeIndex = -1,
    this.hoveredNodeIndex = -1,
  });

  final ProjectEntity project;
  final BranchEntity branch;
  final PageEntity page;
  final Nodes nodes;

  final int focusedNodeIndex;
  final int hoveredNodeIndex;

  CNode get rootNode => const NodeRendering().renderTree(nodes);

  CNode? get focusedNode =>
      focusedNodeIndex >= 0 && focusedNodeIndex < nodes.length
          ? nodes[focusedNodeIndex]
          : null;
  CNode? get hoveredNode =>
      hoveredNodeIndex != -1 ? nodes[hoveredNodeIndex] : null;

  EditorStateEntity copyWith({
    ProjectEntity? project,
    BranchEntity? branch,
    PageEntity? page,
    Nodes? nodes,
    int? focusedNodeIndex,
    int? hoveredNodeIndex,
  }) {
    return EditorStateEntity(
      project: project ?? this.project,
      branch: branch ?? this.branch,
      page: page ?? this.page,
      nodes: nodes ?? this.nodes,
      focusedNodeIndex: focusedNodeIndex ?? this.focusedNodeIndex,
      hoveredNodeIndex: hoveredNodeIndex ?? this.hoveredNodeIndex,
    );
  }

  @override
  List<Object?> get props => [
        project,
        branch,
        page,
        nodes,
        focusedNodeIndex,
        hoveredNodeIndex,
      ];

  @override
  String toString() =>
      'EditorStateEntity { project: $project, branch: $branch, page: $page, nodes: $nodes }';
}
