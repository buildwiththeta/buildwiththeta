import 'package:equatable/equatable.dart';

class RevenueCatConfigMapper {
  const RevenueCatConfigMapper();

  static const _googleKey = 'revenuecat_google_key';
  static const _iOSKey = 'revenuecat_ios_key';
  static const _isEnabledKey = 'revenuecat_flag';

  RevenueCatConfigModel fromJson(final Map<String, dynamic> json) {
    final googleKey = json[_googleKey] as String?;
    final iOSKey = json[_iOSKey] as String?;
    final isEnabled = json[_isEnabledKey] == true;
    if (googleKey != null && iOSKey != null) {
      return RevenueCatConfigModelInitialized(
        googleKey: googleKey,
        iOSKey: iOSKey,
        isEnabled: isEnabled,
      );
    }
    return RevenueCatConfigModelUninitialized(
      googleKey: googleKey ?? '',
      iOSKey: iOSKey ?? '',
      isEnabled: isEnabled,
    );
  }

  Map<String, dynamic> toJson(final RevenueCatConfigModel e) =>
      <String, dynamic>{
        _googleKey: e.googleKey,
        _iOSKey: e.iOSKey,
        _isEnabledKey: e.isEnabled,
      };

  RevenueCatConfigModel copyWith(
    RevenueCatConfigModel e, {
    String? googleKey,
    String? iosKey,
    bool? isEnabled,
  }) {
    final _googleKey = googleKey ?? e.googleKey;
    final _iosKey = iosKey ?? e.iOSKey;
    final _isEnabled = isEnabled ?? e.isEnabled;
    if (_googleKey.isNotEmpty && _iosKey.isNotEmpty) {
      return RevenueCatConfigModelInitialized(
        googleKey: _googleKey,
        iOSKey: _iOSKey,
        isEnabled: _isEnabled,
      );
    }
    return RevenueCatConfigModelUninitialized(
      googleKey: _googleKey,
      iOSKey: _iOSKey,
      isEnabled: _isEnabled,
    );
  }
}

abstract class RevenueCatConfigModel extends Equatable {
  const RevenueCatConfigModel({
    required this.googleKey,
    required this.iOSKey,
    this.isEnabled = false,
  });

  final String googleKey;
  final String iOSKey;
  final bool isEnabled;

  @override
  List<Object?> get props => [
        googleKey,
        iOSKey,
        isEnabled,
      ];
}

class RevenueCatConfigModelInitialized extends RevenueCatConfigModel {
  const RevenueCatConfigModelInitialized({
    required super.googleKey,
    required super.iOSKey,
    super.isEnabled,
  });
}

class RevenueCatConfigModelUninitialized extends RevenueCatConfigModel {
  const RevenueCatConfigModelUninitialized({
    super.googleKey = '',
    super.iOSKey = '',
    super.isEnabled,
  });
}
