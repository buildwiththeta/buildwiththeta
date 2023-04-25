import 'package:equatable/equatable.dart';

class AmplitudeConfigMapper {
  const AmplitudeConfigMapper();

  static const _keyKey = 'amplitude_key';
  static const _zoneKey = 'amplitude_zone';
  static const _urlKey = 'amplitude_server_url';

  AmplitudeConfigModel fromJson(final Map<String, dynamic> json) {
    final key = json[_keyKey] as String?;
    final zone = json[_zoneKey] as String?;
    final serverUrl = json[_urlKey] as String?;
    if (key != null && zone != null && serverUrl != null) {
      return AmplitudeConfigModelInitialized(
        key: key,
        zone: zone,
        serverUrl: serverUrl,
      );
    }
    return AmplitudeConfigModelUninitialized(
      key: key ?? '',
      zone: zone ?? '',
      serverUrl: serverUrl ?? '',
    );
  }

  Map<String, dynamic> toJson(final AmplitudeConfigModel e) =>
      <String, dynamic>{
        _keyKey: e.key,
        _zoneKey: e.zone,
        _urlKey: e.serverUrl,
      };
}

abstract class AmplitudeConfigModel extends Equatable {
  const AmplitudeConfigModel({
    required this.key,
    required this.zone,
    required this.serverUrl,
  });

  final String key;
  final String zone;
  final String serverUrl;

  @override
  List<Object?> get props => [key, zone, serverUrl];
}

class AmplitudeConfigModelInitialized extends AmplitudeConfigModel {
  const AmplitudeConfigModelInitialized({
    required super.key,
    required super.zone,
    required super.serverUrl,
  });
}

class AmplitudeConfigModelUninitialized extends AmplitudeConfigModel {
  const AmplitudeConfigModelUninitialized({
    super.key = '',
    super.zone = '',
    super.serverUrl = '',
  });
}
