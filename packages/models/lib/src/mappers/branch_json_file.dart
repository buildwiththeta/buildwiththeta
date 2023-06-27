import 'package:collection/collection.dart';
import 'package:theta_models/theta_models.dart';

/// Mapper for [BranchJsonFileEntity].
class BranchJsonFileMapper extends Mapper<BranchJsonFileEntity> {
  const BranchJsonFileMapper();

  static const _pagesKey = 'pages';
  static const _nodesKey = 'nodes';
  static const _colorStylesKey = 'color_styles';
  static const _textStylesKey = 'text_styles';
  static const _pageMapper = PageMapper();
  static const _colorStylesMapper = ColorStylesMapper();
  static const _textStylesMapper = TextStylesMapper();

  @override
  BranchJsonFileEntity fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();

  /// For a single instance.
  BranchJsonFileEntity customFromJson(
          Map<String, dynamic> json, dynamic mapper) =>
      BranchJsonFileEntity(
        pages: json[_pagesKey]
            .map<PageEntity>((e) => _pageMapper.fromJson(e))
            .toList(),
        nodes: (json[_nodesKey] as List<dynamic>)
            .map<CNode?>((e) => mapper.fromJson(e['type'], e))
            .whereNotNull()
            .toList(),
        colorStyles: json[_colorStylesKey]
            .map<ColorStyleEntity>((e) => _colorStylesMapper.fromJson(e))
            .toList(),
        textStyles: json[_textStylesKey]
            .map<TextStyleEntity>((e) => _textStylesMapper.fromJson(e))
            .toList(),
      );

  /// Return a complete json from this instance.
  ///
  /// Return example:
  /// {
  ///   'project_id': ...,
  ///   'branch_json_data': ...,
  ///   'created_at': ..., // ISO 8601
  /// }
  @override
  Map<String, dynamic> toJson(final BranchJsonFileEntity branch) => {
        _pagesKey:
            branch.pages.map((e) => _pageMapper.toJsonWithId(e)).toList(),
        _nodesKey: branch.nodes
            .map((e) => e.toJsonWithStabilIdAndPageIdAndId())
            .toList(),
        _colorStylesKey: branch.colorStyles
            .map((e) => _colorStylesMapper.toJsonWithId(e))
            .toList(),
        _textStylesKey: branch.textStyles
            .map((e) => _textStylesMapper.toJsonWithId(e))
            .toList(),
      };

  BranchJsonFileEntity copyWith(
    final BranchJsonFileEntity e, {
    final Pages? pages,
    final Nodes? nodes,
    final ColorStyles? colorStyles,
    final TextStyles? textStyles,
  }) =>
      BranchJsonFileEntity(
        pages: pages ?? e.pages,
        nodes: nodes ?? e.nodes,
        colorStyles: colorStyles ?? e.colorStyles,
        textStyles: textStyles ?? e.textStyles,
      );
}
