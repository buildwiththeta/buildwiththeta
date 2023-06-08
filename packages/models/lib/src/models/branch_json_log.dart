import 'package:equatable/equatable.dart';
import 'package:theta_models/theta_models.dart';

/// Entity for a branch.
/// Uses BranchJsonLogMapper to serialize/deserialize.
class BranchJsonLogEntity extends Equatable {
  const BranchJsonLogEntity({
    this.id = '',
    required this.projectID,
    required this.action,
    required this.branch,
    required this.pages,
    required this.nodes,
    required this.colorStyles,
    required this.textStyles,
    required this.createdAt,
  });

  final BranchJsonLogID id;
  final ProjectID projectID;
  final BranchActionTypeEnum action;
  final BranchEntity branch;
  final Pages pages;
  final Nodes nodes;
  final ColorStyles colorStyles;
  final TextStyles textStyles;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        projectID,
        action,
        branch,
        pages,
        nodes,
        colorStyles,
        textStyles,
        createdAt
      ];
}
