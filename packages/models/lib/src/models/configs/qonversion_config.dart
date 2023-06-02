import 'package:equatable/equatable.dart';

class QonversionConfigMapper {
  const QonversionConfigMapper();

  static const _keyKey = 'qonversion_key';
  static const _debugKey = 'qonversion_debug_mode';
  static const _enabledKey = 'qonversion_flag';

  QonversionConfigModel fromJson(final Map<String, dynamic> json) {
    final key = json[_keyKey] as String? ?? '';
    final isDebugMode = json[_debugKey] == true;
    final isEnabled = json[_enabledKey] == true;
    if (key.isNotEmpty) {
      return QonversionConfigModelInitialized(
        key: key,
        isDebugMode: isDebugMode,
        isEnabled: isEnabled,
      );
    }
    return QonversionConfigModelUninitialized(
      key: key,
      isDebugMode: isDebugMode,
      isEnabled: isEnabled,
    );
  }

  Map<String, dynamic> toJson(final QonversionConfigModel e) =>
      <String, dynamic>{
        _keyKey: e.key,
        _debugKey: e.isDebugMode,
        _enabledKey: e.isEnabled,
      };

  QonversionConfigModel copyWith(
    QonversionConfigModel e, {
    final String? key,
    final bool? isEnabled,
    final bool? isDebugMode,
  }) {
    final key0 = key ?? e.key;
    final isEnabled0 = isEnabled ?? e.isEnabled;
    final isDebugMode0 = isDebugMode ?? e.isDebugMode;

    if (key0.isNotEmpty) {
      return QonversionConfigModelInitialized(
        key: key0,
        isDebugMode: isDebugMode0,
        isEnabled: isEnabled0,
      );
    }
    return QonversionConfigModelUninitialized(
      key: key0,
      isDebugMode: isDebugMode0,
      isEnabled: isEnabled0,
    );
  }
}

abstract class QonversionConfigModel extends Equatable {
  const QonversionConfigModel({
    required this.key,
    this.isDebugMode = true,
    this.isEnabled = false,
  });

  final String key;
  final bool isDebugMode;
  final bool isEnabled;

  @override
  List<Object?> get props => [
        key,
        isDebugMode,
        isEnabled,
      ];
}

class QonversionConfigModelInitialized extends QonversionConfigModel {
  const QonversionConfigModelInitialized({
    required super.key,
    required super.isDebugMode,
    required super.isEnabled,
  });
}

class QonversionConfigModelUninitialized extends QonversionConfigModel {
  const QonversionConfigModelUninitialized({
    super.key = '',
    super.isDebugMode,
    super.isEnabled,
  });
}
