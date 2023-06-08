import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class PageMapper extends Mapper<PageEntity> {
  const PageMapper();

  static const _idKey = 'id';
  static const _branchIdKey = 'branch_id';
  static const _nameKey = 'name';
  static const _refPageId = 'ref_page_id';

  /// For a single instance
  @override
  PageEntity fromJson(Map<String, dynamic> json) {
    return PageEntity(
      id: json[_idKey],
      branchID: json[_branchIdKey],
      name: json[_nameKey] as String,
      refPageId: json[_refPageId],
    );
  }

  /// Return a json from this instance
  ///
  /// Return:
  /// ```dart
  /// {
  ///   "branch_id": ...,
  ///   "name": ...,
  ///  "ref_page_id": ...,
  /// }
  /// ```
  @override
  Map<String, dynamic> toJson(final PageEntity page) => {
        _idKey: page.id,
        _branchIdKey: page.branchID,
        _nameKey: page.name,
        _refPageId: page.refPageId,
      };

  Map<String, dynamic> toJsonWithId(PageEntity page) => {
        _idKey: page.id,
        _branchIdKey: page.branchID,
        _nameKey: page.name,
        _refPageId: page.refPageId,
      };

  PageEntity copyWith(final PageEntity e,
          {final String? id,
          final String? branchID,
          final String? name,
          final String? refPageId}) =>
      PageEntity(
        id: id ?? e.id,
        branchID: branchID ?? e.branchID,
        name: name ?? e.name,
        refPageId: refPageId ?? e.refPageId,
      );
}
