import 'package:equatable/equatable.dart';

class AdMobConfigMapper {
  const AdMobConfigMapper();

  static const String _iosKey = 'Google_AdMob_Ios_Id_Key';
  static const String _androidKey = 'Google_AdMob_Android_Id_Key';

  AdMobConfigModel fromJson(final Map<String, dynamic> json) {
    final iosId = json[_iosKey] as String?;
    final androidId = json[_androidKey] as String?;
    if (iosId != null && androidId != null) {
      return AdMobConfigModelInitialized(
        iosId: iosId,
        androidId: androidId,
      );
    }
    return AdMobConfigModelUninitialized(
      iosId: iosId ?? '',
      androidId: androidId ?? '',
    );
  }

  Map<String, dynamic> toJson(final AdMobConfigModel e) => <String, dynamic>{
        _iosKey: e.iosId,
        _androidKey: e.androidId,
      };

  AdMobConfigModel copyWith(
    final AdMobConfigModel e, {
    final String? iosId,
    final String? androidId,
  }) {
    final _iosId = iosId ?? e.iosId;
    final _androidId = androidId ?? e.androidId;
    if (iosId != null && androidId != null) {
      return AdMobConfigModelInitialized(
        iosId: _iosId,
        androidId: _androidId,
      );
    }
    return AdMobConfigModelUninitialized(
      iosId: _iosId,
      androidId: _androidId,
    );
  }
}

abstract class AdMobConfigModel extends Equatable {
  const AdMobConfigModel({
    required this.iosId,
    required this.androidId,
  });

  final String iosId;
  final String androidId;

  @override
  List<Object?> get props => [
        iosId,
        androidId,
      ];
}

class AdMobConfigModelInitialized extends AdMobConfigModel {
  const AdMobConfigModelInitialized({
    required super.iosId,
    required super.androidId,
  });
}

class AdMobConfigModelUninitialized extends AdMobConfigModel {
  const AdMobConfigModelUninitialized({
    super.iosId = '',
    super.androidId = '',
  });
}
