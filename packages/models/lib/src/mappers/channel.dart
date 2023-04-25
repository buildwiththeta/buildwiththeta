import 'package:theta_models/theta_models.dart';

/// Mapper for color styles
class ChannelMapper {
  const ChannelMapper();

  static const _idKey = '_id';
  static const _nameKey = 'name';
  static const _prjId = 'prj_id';

  /// For a single instance
  ChannelObject fromJson({required final Map<String, dynamic> json}) =>
      ChannelObject(
        id: json[_idKey] as int,
        prjId: json[_prjId] as int,
        name: json[_nameKey] as String,
      );

  /// Get a list of color styles from json
  List<ChannelObject> listFromJson(final List<dynamic>? list) {
    return (list ?? <dynamic>[])
        .map(
          (final dynamic e) => fromJson(json: e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Return a json from this instance
  Map<String, dynamic> toJson(final ChannelObject channel) => <String, dynamic>{
        _prjId: channel.prjId,
        _nameKey: channel.name,
      };
}
