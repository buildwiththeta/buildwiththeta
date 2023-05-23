import 'package:equatable/equatable.dart';

class AirtableConfigMapper {
  const AirtableConfigMapper();

  static const _keyKey = 'airtK';
  static const _projectBaseKey = 'airtPB';
  static const _isEnabledKey = 'airtEnbld';

  AirtableConfigModel fromJson(final Map<String, dynamic> json) {
    final key = json[_keyKey] as String?;
    final projectBase = json[_projectBaseKey] as String?;
    final isEnabled = json[_isEnabledKey] == true;
    if (key != null && projectBase != null) {
      return AirtableConfigModelInitialized(
        key: key,
        projectBase: projectBase,
        isEnabled: isEnabled,
      );
    }
    return AirtableConfigModelUninitialized(
      key: key ?? '',
      projectBase: projectBase ?? '',
      isEnabled: isEnabled,
    );
  }

  Map<String, dynamic> toJson(final AirtableConfigModel e) => <String, dynamic>{
        _keyKey: e.key,
        _projectBaseKey: e.projectBase,
        _isEnabledKey: e.isEnabled,
      };

  AirtableConfigModel copyWith(
    final AirtableConfigModel e, {
    final String? key,
    final String? projectBase,
    final bool? isEnabled,
  }) {
    if (key != null && projectBase != null) {
      return AirtableConfigModelInitialized(
        key: key,
        projectBase: projectBase,
        isEnabled: isEnabled ?? e.isEnabled,
      );
    }
    return AirtableConfigModelUninitialized(
      key: key ?? '',
      projectBase: projectBase ?? '',
      isEnabled: isEnabled ?? e.isEnabled,
    );
  }
}

abstract class AirtableConfigModel extends Equatable {
  const AirtableConfigModel({
    required this.key,
    required this.projectBase,
    this.isEnabled = false,
  });

  final String key;
  final String projectBase;
  final bool isEnabled;

  @override
  List<Object?> get props => [
        key,
        projectBase,
        isEnabled,
      ];
}

class AirtableConfigModelInitialized extends AirtableConfigModel {
  const AirtableConfigModelInitialized({
    required super.key,
    required super.projectBase,
    required super.isEnabled,
  });
}

class AirtableConfigModelUninitialized extends AirtableConfigModel {
  const AirtableConfigModelUninitialized({
    super.key = '',
    super.projectBase = '',
    super.isEnabled = false,
  });
}
