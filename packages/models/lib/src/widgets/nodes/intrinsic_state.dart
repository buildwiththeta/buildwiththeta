// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:theta_models/src/widgets/nodes/children_enum.dart';
import 'package:theta_models/src/widgets/nodes/node_type.dart';

// Project imports:
class IntrinsicState extends Equatable {
  const IntrinsicState({
    required this.nodeIcon,
    required this.displayName,
    required this.type,
    required this.canHave,
    this.maxChildren,
  });

  /// Icon of the node.
  final String nodeIcon;

  /// Visible name of node. Must be humanized.
  final String displayName;

  /// Type of node.
  final String type;

  /// Max number of children the node can have.
  final int? maxChildren;

  /// This node can have a children, a child or none?
  final ChildrenEnum canHave;

  bool get canHaveChildren => canHave == ChildrenEnum.children;
  bool get canHaveChild => canHave == ChildrenEnum.child;

  static IntrinsicState get basic => const IntrinsicState(
        nodeIcon: '',
        displayName: '',
        type: NType.nil,
        maxChildren: null,
        canHave: ChildrenEnum.none,
      );

  @override
  String toString() {
    return 'IntrinsicState: ntype: $type';
  }

  @override
  List<Object?> get props => [
        nodeIcon,
        displayName,
        type,
        maxChildren,
        canHave,
      ];
}
