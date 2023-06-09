import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

/// Mapper for [BranchJsonLogEntity].
class BranchJsonLogMapper extends Mapper<BranchJsonLogEntity> {
  const BranchJsonLogMapper();

  static const _idKey = 'id';
  static const _prjIdKey = 'project_id';
  static const _actionKey = 'action';
  static const _branchKey = 'branch';
  static const _pagesKey = 'pages';
  static const _nodesKey = 'nodes';
  static const _colorStylesKey = 'color_styles';
  static const _textStylesKey = 'text_styles';
  static const _createdAtKey = 'created_at';
  static const _branchMapper = BranchMapper();
  static const _pageMapper = PageMapper();
  static const _colorStylesMapper = ColorStylesMapper();
  static const _textStylesMapper = TextStylesMapper();
  static const _mapper = NodesParse();

  /// For a single instance.
  @override
  BranchJsonLogEntity fromJson(Map<String, dynamic> json) =>
      BranchJsonLogEntity(
        id: json[_idKey],
        projectID: json[_prjIdKey],
        action: parseBranchActionTypeEnum(json[_actionKey]),
        branch: _branchMapper.fromJson(json[_branchKey]),
        pages: json[_pagesKey]
            .map<PageEntity>((e) => _pageMapper.fromJson(e))
            .toList(),
        nodes: json[_nodesKey]
            .map<CNode>((e) => _mapper.fromJson(e['type'], e)!)
            .toList(),
        colorStyles: json[_colorStylesKey]
            .map<ColorStyleEntity>((e) => _colorStylesMapper.fromJson(e))
            .toList(),
        textStyles: json[_textStylesKey]
            .map<TextStyleEntity>((e) => _textStylesMapper.fromJson(e))
            .toList(),
        createdAt: DateTime.parse(json[_createdAtKey]),
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
  Map<String, dynamic> toJson(final BranchJsonLogEntity branch) => {
        _prjIdKey: branch.projectID,
        _actionKey: branch.action.name,
        _branchKey: _branchMapper.toJsonWithId(branch.branch),
        _pagesKey:
            branch.pages.map((e) => _pageMapper.toJsonWithId(e)).toList(),
        _nodesKey: branch.nodes.map((e) => e.toJsonWithIdAndPageId()).toList(),
        _colorStylesKey: branch.colorStyles
            .map((e) => _colorStylesMapper.toJsonWithId(e))
            .toList(),
        _textStylesKey: branch.textStyles
            .map((e) => _textStylesMapper.toJsonWithId(e))
            .toList(),
      };

  BranchJsonLogEntity copyWith(
    final BranchJsonLogEntity e, {
    final BranchActionLogID? id,
    final ProjectID? projectID,
    final BranchActionTypeEnum? action,
    final BranchEntity? branch,
    final Pages? pages,
    final Nodes? nodes,
    final ColorStyles? colorStyles,
    final TextStyles? textStyles,
    final DateTime? createdAt,
  }) =>
      BranchJsonLogEntity(
        id: id ?? e.id,
        projectID: projectID ?? e.projectID,
        action: action ?? e.action,
        branch: branch ?? e.branch,
        pages: pages ?? e.pages,
        nodes: nodes ?? e.nodes,
        colorStyles: colorStyles ?? e.colorStyles,
        textStyles: textStyles ?? e.textStyles,
        createdAt: createdAt ?? e.createdAt,
      );
}
