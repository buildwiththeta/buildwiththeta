import 'package:equatable/equatable.dart';

class SupabaseConfigMapper {
  const SupabaseConfigMapper();

  static const _keyKey = 'sKey';
  static const _urlKey = 'sUrl';

  SupabaseConfigModel fromJson(final Map<String, dynamic> json) {
    final key = json[_keyKey] as String? ?? '';
    final url = json[_urlKey] as String? ?? '';
    if (key.isNotEmpty && url.isNotEmpty) {
      return SupabaseConfigModelInitialized(
        key: key,
        url: url,
      );
    }
    return SupabaseConfigModelUninitialized(
      key: key,
      url: url,
    );
  }

  Map<String, dynamic> toJson(final SupabaseConfigModel e) => <String, dynamic>{
        _keyKey: e.key,
        _urlKey: e.url,
      };

  SupabaseConfigModel copyWith(
    final SupabaseConfigModel e, {
    final String? key,
    final String? url,
  }) {
    final _key = key ?? e.key;
    final _url = url ?? e.url;
    if (_key.isNotEmpty && _url.isNotEmpty) {
      return SupabaseConfigModelInitialized(
        key: _key,
        url: _url,
      );
    }
    return SupabaseConfigModelUninitialized(
      key: _key,
      url: _url,
    );
  }
}

abstract class SupabaseConfigModel extends Equatable {
  const SupabaseConfigModel({
    required this.key,
    required this.url,
  });

  final String key;
  final String url;

  @override
  List<Object?> get props => [
        key,
        url,
      ];
}

class SupabaseConfigModelInitialized extends SupabaseConfigModel {
  const SupabaseConfigModelInitialized({
    required super.key,
    required super.url,
  });
}

class SupabaseConfigModelUninitialized extends SupabaseConfigModel {
  const SupabaseConfigModelUninitialized({
    super.key = '',
    super.url = '',
  });
}
