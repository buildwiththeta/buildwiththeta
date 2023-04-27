import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class PageMapper {
  const PageMapper();

  @Deprecated('Used with old DB')
  static const _oldIdKey = 'id';
  static const _idKey = '_id';
  static const _channelKey = 'channel_id';
  static const _nameKey = 'name';
  static const _isAuthReqKey = 'is_authenticated_required';
  static const _hardCKey = 'hard_coded';
  static const _runUrlKey = 'run_url';
  static const _codekey = 'code';
  static const _routeKey = 'route';
  static const _statesKey = 'states';
  static const _paramsKey = 'params';
  static const _isPageKey = 'isPage';
  static const _isPrimaryKey = 'isPrimary';

  /// For a single instance
  PageObject fromJson({required final Map<String, dynamic> json}) {
    final params = <VariableObject>[];
    if (json['params'] != null) {
      for (final e in json['params'] ?? <dynamic>[]) {
        params.add(VariableObject.fromJson(e as Map<String, dynamic>));
      }
    }
    final states = <VariableObject>[];
    if (json['states'] != null) {
      // for page states
      for (final e in json['states'] ?? <dynamic>[]) {
        states.add(VariableObject.fromJson(e as Map<String, dynamic>));
      }
    }
    return PageObject(
      id: json[_oldIdKey] as PageID? ?? json[_idKey] as PageID,
      channelId: json[_channelKey] as ChannelID? ?? '',
      scaffold: NNull(
        nid: '',
        intrinsicState: IntrinsicState.basic,
      ),
      flatList: const [],
      name: json[_nameKey] as String,
      isPrimary: json[_isPrimaryKey] as bool,
      isPage: json[_isPageKey] as bool,
      defaultParams: params,
      defaultStates: states,
      route: json[_routeKey] as String? ?? '',
      isAuthenticatedRequired: json[_isAuthReqKey] as bool? ?? false,
      isHardCoded: json[_hardCKey] as bool? ?? false,
      runUrl: json[_runUrlKey] as String?,
      code: json[_codekey] as String?,
    );
  }

  /// Get a list of color styles from json
  List<PageObject> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(json: e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Return a json from this instance
  Map<String, dynamic> toJson(final PageObject page) => <String, dynamic>{
        _channelKey: page.channelId,
        _nameKey: page.name,
        _isPrimaryKey: page.isPrimary,
        _isPageKey: page.isPage,
        _paramsKey: page.defaultParams.map((final e) => e.toJson()).toList(),
        _statesKey: page.defaultStates.map((final e) => e.toJson()).toList(),
        _routeKey: page.route,
        _isAuthReqKey: page.isAuthenticatedRequired,
        _hardCKey: page.isHardCoded,
        _runUrlKey: page.runUrl,
        _codekey: page.code,
      };
}
