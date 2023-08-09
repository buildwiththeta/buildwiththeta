import 'package:enum_to_string/enum_to_string.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for project assets
class ProjectAssetsMapper extends Mapper<ProjectAssetsEntity> {
  const ProjectAssetsMapper();

  static const _idKey = 'id';
  static const _projectIdKey = 'project_id';
  static const _typeKey = 'type';
  static const _folderNameKey = 'folder_name';
  static const _urlKey = 'url';

  /// For a single instance
  @override
  ProjectAssetsEntity fromJson(Map<String, dynamic> json) {
    return ProjectAssetsEntity(
      id: json[_idKey],
      projectID: json[_projectIdKey],
      type: EnumToString.fromString(
        AssetsType.values,
        json[_typeKey],
      )!,
      folderName: json[_folderNameKey],
      url: json[_urlKey],
    );
  }

  /// Return a json from this instance
  @override
  Map<String, dynamic> toJson(final ProjectAssetsEntity projectAssets) => {
        _idKey: projectAssets.id,
        _projectIdKey: projectAssets.projectID,
        _typeKey: EnumToString.convertToString(projectAssets.type),
        _folderNameKey: projectAssets.folderName,
        _urlKey: projectAssets.url,
      };

  ProjectAssetsEntity copyWith(final ProjectAssetsEntity e,
          {final String? id,
          final String? projectID,
          final AssetsType? type,
          final String? folderName,
          final String? url}) =>
      ProjectAssetsEntity(
        id: id ?? e.id,
        projectID: projectID ?? e.projectID,
        type: type ?? e.type,
        folderName: folderName ?? e.folderName,
        url: url ?? e.url,
      );
}
