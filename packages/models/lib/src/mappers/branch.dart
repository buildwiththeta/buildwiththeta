import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class BranchMapper {
  const BranchMapper();

  static const _idKey = '_id';
  static const _nameKey = 'name';
  static const _prjIdKey = 'project_id';
  static const _entryPointPageIdKey = 'entry_point_page_id';
  static const _descriptionKey = 'description';
  static const _createdAtKey = 'created_at';

  /// For a single instance.
  BranchEntity fromJson({required final Map<String, dynamic> json}) =>
      BranchEntity(
        id: json[_idKey],
        projectID: json[_prjIdKey],
        name: json[_nameKey],
        entryPointPageID: json[_entryPointPageIdKey],
        description: json[_descriptionKey],
        createdAt: DateTime.parse(json[_createdAtKey]),
      );

  /// Get a list of color styles from json.
  List<BranchEntity> listFromJson(final List<dynamic> list) {
    return list
        .map(
          (final e) => fromJson(json: e),
        )
        .toList();
  }

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
  Map<String, dynamic> toCompleteJson(final BranchEntity branch) => {
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
}
