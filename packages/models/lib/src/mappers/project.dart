import 'package:theta_models/src/mappers/mapper.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ProjectMapper extends Mapper<ProjectEntity> {
  const ProjectMapper();

  static const _idField = 'id';
  static const _teamIdField = 'team_id';
  static const _nameField = 'name';
  static const _slugField = 'slug';
  static const _updatedAtField = 'updated_at';
  static const _createdAtField = 'created_at';

  /// For a single instance
  @override
  ProjectEntity fromJson(final Map<String, dynamic> json) {
    return ProjectEntity(
      id: json[_idField],
      name: json[_nameField],
      slug: json[_slugField],
      teamId: json[_teamIdField],
      updatedAt: DateTime.parse(json[_updatedAtField]),
      createdAt: DateTime.parse(json[_createdAtField]),
    );
  }

  @override
  Map<String, dynamic> toJson(final ProjectEntity e) => <String, dynamic>{
        _teamIdField: e.teamId,
        _nameField: e.name,
        _slugField: e.slug,
      };

  ProjectEntity copyWith({
    required final ProjectEntity e,
    final ID? id,
    final TeamID? teamId,
    final String? name,
    final String? slug,
    final DateTime? updatedAt,
    final DateTime? createdAt,
  }) {
    return ProjectEntity(
      id: id ?? e.id,
      teamId: teamId ?? e.teamId,
      name: name ?? e.name,
      slug: slug ?? e.slug,
      updatedAt: updatedAt ?? e.updatedAt,
      createdAt: createdAt ?? e.createdAt,
    );
  }
}
