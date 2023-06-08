import 'package:equatable/equatable.dart';
import 'package:theta_models/src/models/typedefs.dart';

/// Entity for a Branch Action Log.
/// Uses BranchMapper to serialize/deserialize.
class BranchActionLogEntity extends Equatable {
  const BranchActionLogEntity({
    required this.id,
    required this.projectID,
    required this.action,
    required this.userName,
    required this.sourceBranchName,
    required this.targetBranchName,
    required this.createdAt,
  });

  final BranchActionLogID id;
  final ProjectID projectID;
  final BranchActionTypeEnum action;
  final PageID? userName;
  final String sourceBranchName;
  final String? targetBranchName;
  final DateTime createdAt;

  @override
  List<Object?> get props =>
      [id, projectID, userName, sourceBranchName, targetBranchName, createdAt];
}

enum BranchActionTypeEnum {
  create,
  merge,
  delete,
}

BranchActionTypeEnum parseBranchActionTypeEnum(String action) {
  switch (action) {
    case 'create':
      return BranchActionTypeEnum.create;
    case 'merge':
      return BranchActionTypeEnum.merge;
    case 'delete':
      return BranchActionTypeEnum.delete;
    default:
      throw Exception('Invalid BranchActionTypeEnum value: $action');
  }
}
