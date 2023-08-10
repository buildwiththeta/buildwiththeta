import 'package:enum_to_string/enum_to_string.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for project assets
class AssetMapper extends Mapper<AssetEntity> {
  const AssetMapper();

  static const _idKey = 'id';
  static const _projectIdKey = 'project_id';
  static const _typeKey = 'type';
  static const _fileNameKey = 'file_name';
  static const _urlKey = 'url';
  static const _createdAtKey = 'created_at';

  /// For a single instance
  @override
  AssetEntity fromJson(Map<String, dynamic> json) {
    return AssetEntity(
      id: json[_idKey],
      projectID: json[_projectIdKey],
      type: EnumToString.fromString(
        AssetType.values,
        json[_typeKey],
      )!,
      fileName: json[_fileNameKey],
      url: json[_urlKey],
      createdAt: DateTime.parse(json[_createdAtKey]),
    );
  }

  /// Return a json from this instance
  @override
  Map<String, dynamic> toJson(final AssetEntity projectAssets) => {
        _idKey: projectAssets.id,
        _projectIdKey: projectAssets.projectID,
        _typeKey: EnumToString.convertToString(projectAssets.type),
        _fileNameKey: projectAssets.fileName,
        _urlKey: projectAssets.url,
        _createdAtKey: projectAssets.createdAt.toIso8601String(),
      };

  AssetEntity copyWith(
    final AssetEntity e, {
    final String? id,
    final String? projectID,
    final AssetType? type,
    final String? fileName,
    final String? url,
    final DateTime? createdAt,
  }) =>
      AssetEntity(
        id: id ?? e.id,
        projectID: projectID ?? e.projectID,
        type: type ?? e.type,
        fileName: fileName ?? e.fileName,
        url: url ?? e.url,
        createdAt: createdAt ?? e.createdAt,
      );
}
