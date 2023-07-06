import 'package:collection/collection.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for [ComponentJsonFileEntity].
class ComponentJsonFileMapper extends Mapper<ComponentJsonFileEntity> {
  const ComponentJsonFileMapper();

  static const _pagesKey = 'pages';
  static const _nodesKey = 'nodes';
  static const _pageMapper = PageMapper();

  @override
  ComponentJsonFileEntity fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  /// For a single instance.
  ComponentJsonFileEntity customFromJson(
          Map<String, dynamic> json, dynamic mapper) =>
      ComponentJsonFileEntity(
        pages: (json[_pagesKey] as List<dynamic>)
            .map<PageEntity?>((e) => _pageMapper.fromJson(e))
            .whereNotNull()
            .toList(),
        nodes: (json[_nodesKey] as List<dynamic>)
            .map<CNode?>((e) => mapper.fromJson(e['type'], e))
            .whereNotNull()
            .toList(),
      );

  /// Return a complete json from this instance.
  ///
  @override
  Map<String, dynamic> toJson(final ComponentJsonFileEntity component) => {
        _pagesKey:
            component.pages.map((e) => _pageMapper.toJsonWithId(e)).toList(),
        _nodesKey: component.nodes
            .map((e) => e.toJsonWithStabilIdAndPageIdAndId())
            .toList(),
      };

  ComponentJsonFileEntity copyWith(
    final ComponentJsonFileEntity e, {
    final Pages? pages,
    final Nodes? nodes,
  }) =>
      ComponentJsonFileEntity(
        pages: pages ?? e.pages,
        nodes: nodes ?? e.nodes,
      );
}
