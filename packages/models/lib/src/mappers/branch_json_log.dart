import 'package:theta_models/theta_models.dart';

/// Mapper for [BranchJsonLogEntity].
class BranchJsonLogMapper extends Mapper<BranchJsonLogEntity> {
  const BranchJsonLogMapper();

  static const _idKey = 'id';
  static const _prjIdKey = 'project_id';
  static const _actionKey = 'action';
  static const _branchKey = 'branch';
  static const _componentNamesKey = 'component_names';
  static const _jsonFileUrlKey = 'json_file_url';
  static const _createdAtKey = 'created_at';
  static const _branchMapper = BranchMapper();

  @override
  BranchJsonLogEntity fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  /// For a single instance.
  BranchJsonLogEntity customFromJson(Map<String, dynamic> json) =>
      BranchJsonLogEntity(
        id: json[_idKey],
        projectID: json[_prjIdKey],
        componentNames: json[_componentNamesKey],
        jsonFileUrl: json[_jsonFileUrlKey],
        action: parseBranchActionTypeEnum(json[_actionKey]),
        branch: _branchMapper.fromJson(json[_branchKey]),
        createdAt: DateTime.parse(json[_createdAtKey]),
      );

  /// Return a complete json from this instance.
  ///
  /// Return example:
  /// {
  ///   'project_id': ...,
  ///   'branch_json_data': ...,
  ///   'created_at': ..., // ISO 8601
  /// }
  @override
  Map<String, dynamic> toJson(final BranchJsonLogEntity branch) => {
        _prjIdKey: branch.projectID,
        _actionKey: branch.action.name,
        _componentNamesKey: branch.componentNames,
        _branchKey: _branchMapper.toJsonWithId(branch.branch),
        _jsonFileUrlKey: branch.jsonFileUrl,
      };

  BranchJsonLogEntity copyWith(
    final BranchJsonLogEntity e, {
    final BranchActionLogID? id,
    final ProjectID? projectID,
    final BranchActionTypeEnum? action,
    final String? componentNames,
    final BranchEntity? branch,
    final String? jsonFileUrl,
    final DateTime? createdAt,
  }) =>
      BranchJsonLogEntity(
        id: id ?? e.id,
        projectID: projectID ?? e.projectID,
        action: action ?? e.action,
        branch: branch ?? e.branch,
        componentNames: componentNames ?? e.componentNames,
        jsonFileUrl: jsonFileUrl ?? e.jsonFileUrl,
        createdAt: createdAt ?? e.createdAt,
      );
}
