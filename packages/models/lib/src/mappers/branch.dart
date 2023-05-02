import 'package:theta_models/src/mappers/mapper.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class BranchMapper extends Mapper<BranchEntity> {
  const BranchMapper();

  static const _idKey = '_id';
  static const _nameKey = 'name';
  static const _prjIdKey = 'project_id';
  static const _entryPointPageIdKey = 'entry_point_page_id';
  static const _descriptionKey = 'description';
  static const _createdAtKey = 'created_at';

  /// For a single instance.
  @override
  BranchEntity fromJson(Map<String, dynamic> json) => BranchEntity(
        id: json[_idKey],
        projectID: json[_prjIdKey],
        name: json[_nameKey],
        entryPointPageID: json[_entryPointPageIdKey],
        description: json[_descriptionKey],
        createdAt: DateTime.parse(json[_createdAtKey]),
      );

  /// Return a complete json from this instance.
  ///
  /// Return example:
  /// {
  ///   'project_id': ...,
  ///   'name': ...,
  ///   'description: ...,
  ///   'entry_point_page_id': ...,
  ///   'created_at': ..., // ISO 8601
  /// }
  @override
  Map<String, dynamic> toJson(final BranchEntity branch) => {
        _prjIdKey: branch.projectID,
        _nameKey: branch.name,
        _descriptionKey: branch.description,
        _entryPointPageIdKey: branch.entryPointPageID,
        _createdAtKey: branch.createdAt.toIso8601String(),
      };

  /// Return a json from this instance.
  ///
  /// Return example:
  /// {
  ///   'project_id': prjId,
  ///   'name': 'name copy',
  /// }
  Map<String, dynamic> toJsonForDuplication(final BranchEntity branch) => {
        _prjIdKey: branch.projectID,
        _nameKey: '${branch.name} copy',
      };

  BranchEntity copyWith(
    final BranchEntity e, {
    final String? id,
    final String? projectID,
    final String? name,
    final String? entryPointPageID,
    final String? description,
    final DateTime? createdAt,
  }) =>
      BranchEntity(
        id: id ?? e.id,
        projectID: projectID ?? e.projectID,
        name: name ?? e.name,
        entryPointPageID: entryPointPageID ?? e.entryPointPageID,
        description: description ?? e.description,
        createdAt: createdAt ?? e.createdAt,
      );
}
