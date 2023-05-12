import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ProjectMapper extends Mapper<ProjectEntity> {
  const ProjectMapper();

  static const _idField = 'id';
  static const _teamIdField = 'team_id';
  static const _nameField = 'name';
  static const _defaultBranchIdField = 'default_branch_id';
  static const _updatedAtField = 'updated_at';
  static const _createdAtField = 'created_at';
  static const _isPublic = 'is_public';

  /// For a single instance
  @override
  ProjectEntity fromJson(final Map<String, dynamic> json) {
    return ProjectEntity(
      id: json[_idField],
      name: json[_nameField],
      teamId: json[_teamIdField],
      defaultBranchId: json[_defaultBranchIdField],
      updatedAt: DateTime.parse(json[_updatedAtField]),
      createdAt: DateTime.parse(json[_createdAtField]),
      isPublic: json[_isPublic],
    );
  }

  @override
  Map<String, dynamic> toJson(final ProjectEntity e) => <String, dynamic>{
        _teamIdField: e.teamId,
        _defaultBranchIdField: e.defaultBranchId,
        _nameField: e.name,
        _isPublic: e.isPublic,
      };

  ProjectEntity copyWith({
    required final ProjectEntity e,
    final ID? id,
    final TeamID? teamId,
    final BranchID? defaultBranchId,
    final String? name,
    final DateTime? updatedAt,
    final DateTime? createdAt,
    final bool? isPublic,
  }) {
    return ProjectEntity(
      id: id ?? e.id,
      teamId: teamId ?? e.teamId,
      defaultBranchId: defaultBranchId ?? e.defaultBranchId,
      name: name ?? e.name,
      updatedAt: updatedAt ?? e.updatedAt,
      createdAt: createdAt ?? e.createdAt,
      isPublic: isPublic ?? e.isPublic,
    );
  }
}
