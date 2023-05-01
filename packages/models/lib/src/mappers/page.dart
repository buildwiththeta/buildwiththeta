import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class PageMapper {
  const PageMapper();

  static const _idKey = 'id';
  static const _branchIdKey = 'branch_id';
  static const _nameKey = 'name';

  /// For a single instance
  PageEntity fromJson({required final Map<String, dynamic> json}) {
    return PageEntity(
      id: json[_idKey],
      branchID: json[_branchIdKey],
      name: json[_nameKey] as String,
    );
  }

  /// Get a list of color styles from json
  List<PageEntity> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(json: e as Map<String, dynamic>),
        )
        .toList();
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
  Map<String, dynamic> toJson(final PageEntity page) => {
        _branchIdKey: page.branchID,
        _nameKey: page.name,
      };
}
