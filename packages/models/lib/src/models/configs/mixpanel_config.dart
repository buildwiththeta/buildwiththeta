import 'package:equatable/equatable.dart';

class MixpanelConfigMapper {
  const MixpanelConfigMapper();

  static const _keyKey = 'mixpanel_key';
  static const _urlKey = 'mixpanel_url';
  static const _trackKey = 'mixpanel_track';

  MixpanelConfigModel fromJson(final Map<String, dynamic> json) {
    final key = json[_keyKey] as String?;
    final url = json[_urlKey] as String?;
    final automaticTracking = json[_trackKey] == 'true';
    if (key != null && url != null) {
      return MixpanelConfigModelInitialized(
        key: key,
        url: url,
        automaticTracking: automaticTracking,
      );
    }
    return MixpanelConfigModelUninitialized(
      key: key ?? '',
      url: url ?? '',
      automaticTracking: automaticTracking,
    );
  }

  Map<String, dynamic> toJson(final MixpanelConfigModel e) => <String, dynamic>{
        _keyKey: e.key,
        _urlKey: e.url,
        _trackKey: e.automaticTracking,
      };

  MixpanelConfigModel copyWith(
    final MixpanelConfigModel e, {
    final String? key,
    final String? url,
    final bool? automaticTracking,
  }) {
    final _key = key ?? e.key;
    final _url = url ?? e.url;
    final _track = automaticTracking ?? e.automaticTracking;

    if (_key.isNotEmpty && _urlKey.isNotEmpty) {
      return MixpanelConfigModelInitialized(
        key: _key,
        url: _url,
        automaticTracking: _track,
      );
    }
    return MixpanelConfigModelUninitialized(
      key: _key,
      url: _url,
      automaticTracking: _track,
    );
  }
}

abstract class MixpanelConfigModel extends Equatable {
  const MixpanelConfigModel({
    required this.key,
    required this.url,
    this.automaticTracking = false,
  });

  final String key;
  final String url;
  final bool automaticTracking;

  @override
  List<Object?> get props => [
        key,
        url,
        automaticTracking,
      ];
}

class MixpanelConfigModelInitialized extends MixpanelConfigModel {
  const MixpanelConfigModelInitialized({
    required super.key,
    required super.url,
    required super.automaticTracking,
  });
}

class MixpanelConfigModelUninitialized extends MixpanelConfigModel {
  const MixpanelConfigModelUninitialized({
    super.key = '',
    super.url = '',
    super.automaticTracking,
  });
}
