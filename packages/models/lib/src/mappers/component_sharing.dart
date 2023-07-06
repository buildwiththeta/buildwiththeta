import 'package:theta_models/theta_models.dart';

/// Mapper for Component Sharing
class ComponentSharingMapper extends Mapper<ComponentSharingEntity> {
  const ComponentSharingMapper();

  static const _idField = 'id';
  static const _teamIdField = 'team_id';
  static const _projectIdField = 'project_id';
  static const _jsonFileUrlField = 'json_file_url';
  static const _descriptionField = 'description';
  static const _titleField = 'title';
  static const _imageField = 'image';
  static const _pageStabilIdField = 'page_stabil_id';
  static const _createdAtKey = 'created_at';

  /// For a single instance
  @override
  ComponentSharingEntity fromJson(final Map<String, dynamic> json) {
    return ComponentSharingEntity(
      id: json[_idField],
      teamId: json[_teamIdField],
      projectId: json[_projectIdField],
      jsonFileUrl: json[_jsonFileUrlField],
      description: json[_descriptionField],
      title: json[_titleField],
      image: json[_imageField],
      pageStabilId: json[_pageStabilIdField],
      createdAt: DateTime.parse(json[_createdAtKey]),
    );
  }

  @override
  Map<String, dynamic> toJson(final ComponentSharingEntity e) =>
      <String, dynamic>{
        _idField: e.id,
        _teamIdField: e.teamId,
        _projectIdField: e.projectId,
        _jsonFileUrlField: e.jsonFileUrl,
        _descriptionField: e.description,
        _titleField: e.title,
        _imageField: e.image,
        _pageStabilIdField: e.pageStabilId,
      };

  ComponentSharingEntity copyWith({
    required final ComponentSharingEntity e,
    final ID? id,
    final TeamID? teamId,
    final ProjectID? projectId,
    final UserID? userId,
    final String? jsonFileUrl,
    final String? description,
    final String? title,
    final String? image,
    final String? pageStabilId,
    final DateTime? createdAt,
  }) {
    return ComponentSharingEntity(
      id: id ?? e.id,
      teamId: teamId ?? e.teamId,
      projectId: projectId ?? e.projectId,
      jsonFileUrl: jsonFileUrl ?? e.jsonFileUrl,
      description: description ?? e.description,
      title: title ?? e.title,
      image: image ?? e.image,
      pageStabilId: pageStabilId ?? e.pageStabilId,
      createdAt: createdAt ?? e.createdAt,
    );
  }
}
