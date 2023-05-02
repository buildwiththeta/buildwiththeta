import 'package:theta_models/src/mappers/mapper.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class PageMapper extends Mapper<PageEntity> {
  const PageMapper();

  static const _idKey = 'id';
  static const _branchIdKey = 'branch_id';
  static const _nameKey = 'name';

  /// For a single instance
  @override
  PageEntity fromJson(Map<String, dynamic> json) {
    return PageEntity(
      id: json[_idKey],
      branchID: json[_branchIdKey],
      name: json[_nameKey] as String,
    );
  }

  /// Return a json from this instance
  ///
  /// Return:
  /// ```dart
  /// {
  ///   "branch_id": ...,
  ///   "name": ...,
  /// }
  /// ```
  @override
  Map<String, dynamic> toJson(final PageEntity page) => {
        _branchIdKey: page.branchID,
        _nameKey: page.name,
      };

  PageEntity copyWith(final PageEntity e,
          {final String? id, final String? branchID, final String? name}) =>
      PageEntity(
        id: id ?? e.id,
        branchID: branchID ?? e.branchID,
        name: name ?? e.name,
      );
}
