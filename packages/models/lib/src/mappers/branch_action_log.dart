import 'package:theta_models/theta_models.dart';

/// Mapper for [BranchActionLogEntity].
class BranchActionLogMapper extends Mapper<BranchActionLogEntity> {
  const BranchActionLogMapper();

  static const _idKey = 'id';
  static const _prjIdKey = 'project_id';
  static const _actionKey = 'action';
  static const _sourceBranchNamenKey = 'source_branch_name';
  static const _targetBranchNameKey = 'target_branch_name';
  static const _createdAtKey = 'created_at';
  static const _userUID = 'user_uid';

  /// For a single instance.
  @override
  BranchActionLogEntity fromJson(Map<String, dynamic> json) =>
      BranchActionLogEntity(
        id: json[_idKey],
        projectID: json[_prjIdKey],
        action: parseBranchActionTypeEnum(json[_actionKey]),
        userID: json[_userUID],
        sourceBranchName: json[_sourceBranchNamenKey],
        targetBranchName: json[_targetBranchNameKey],
        createdAt: DateTime.parse(json[_createdAtKey]),
      );

  /// Return a complete json from this instance.
  ///
  /// Return example:
  /// {
  ///   'project_id': ...,
  ///   'name': ...,
  ///   'created_at': ..., // ISO 8601
  /// }
  @override
  Map<String, dynamic> toJson(final BranchActionLogEntity branch) => {
        _prjIdKey: branch.projectID,
        _actionKey: branch.action.name,
        _userUID: branch.userID,
        _sourceBranchNamenKey: branch.sourceBranchName,
        _targetBranchNameKey: branch.targetBranchName,
        _createdAtKey: branch.createdAt.toIso8601String(),
      };

  BranchActionLogEntity copyWith(
    final BranchActionLogEntity e, {
    final BranchActionLogID? id,
    final ProjectID? projectID,
    final BranchActionTypeEnum? action,
    final UserID? userID,
    final PageID? sourceBranchName,
    final String? targetBranchName,
    final DateTime? createdAt,
  }) =>
      BranchActionLogEntity(
        id: id ?? e.id,
        action: action ?? e.action,
        projectID: projectID ?? e.projectID,
        userID: userID ?? e.userID,
        sourceBranchName: sourceBranchName ?? e.sourceBranchName,
        targetBranchName: targetBranchName ?? e.targetBranchName,
        createdAt: createdAt ?? e.createdAt,
      );
}
