import 'package:equatable/equatable.dart';

class FirebaseConfigMapper {
  const FirebaseConfigMapper();

  static const _appIdKey = 'firebase_app_id';
  static const _androidServiceKey = 'firebase_google_services_json';
  static const _servicePlistKey = 'firebase_google_service_info_plist';
  static const _apiKey = 'firebase_api_key';
  static const _projectIdKey = 'firebase_project_id';
  static const _messagingSenderId = 'firebase_messaging_sender_id';
  static const _authDomain = 'firebase_auth_domain';
  static const _measurementIdKey = 'firebase_measurement_id';
  static const _storageBucket = 'firebase_storage_bucket';
  static const _notificationVapidKey = 'firebase_push_notification_vapid_key';
  static const _notificationLegacyServerKey =
      'firebase_push_notification_cloud_messaging_api_legacy_server_key';
  static const _notificationFlagKey = 'firebase_push_notification_flag';
  static const _isEnabledKey = 'firebase_flag';

  FirebaseConfigModel fromJson(final Map<String, dynamic> json) {
    final appId = json[_appIdKey] as String?;
    final serviceJson = json[_androidServiceKey] as String?;
    final servicePlist = json[_servicePlistKey] as String?;
    final apiKey = json[_apiKey] as String?;
    final projectId = json[_projectIdKey] as String?;
    final messagingSenderId = json[_messagingSenderId] as String?;
    final authDomain = json[_authDomain] as String?;
    final measurementId = json[_measurementIdKey] as String?;
    final storageBucket = json[_storageBucket] as String?;
    final notificationVapidKey = json[_notificationVapidKey] as String?;
    final notificationLegacyServerKey =
        json[_notificationLegacyServerKey] as String?;
    final notificationFlag = json[_notificationFlagKey] == true;
    final isEnabled = json[_isEnabledKey] == true;

    if (appId != null &&
        apiKey != null &&
        projectId != null &&
        messagingSenderId != null &&
        authDomain != null &&
        serviceJson != null &&
        servicePlist != null &&
        measurementId != null &&
        storageBucket != null &&
        notificationLegacyServerKey != null &&
        notificationVapidKey != null) {
      return FirebaseConfigModelInitialized(
        appId: appId,
        apiKey: apiKey,
        projectId: projectId,
        messagingSenderId: messagingSenderId,
        authDomain: authDomain,
        serviceAndroidJson: serviceJson,
        serviceInfoPlist: servicePlist,
        measurementId: measurementId,
        storageBucket: storageBucket,
        notificationCMApiLegacyServerKey: notificationLegacyServerKey,
        notificationVapidKey: notificationVapidKey,
        pushNotificationFlag: notificationFlag,
        isEnabled: isEnabled,
      );
    }
    return FirebaseConfigModelUninitialized(
      appId: appId ?? '',
      apiKey: apiKey ?? '',
      projectId: projectId ?? '',
      messagingSenderId: messagingSenderId ?? '',
      authDomain: authDomain ?? '',
      serviceAndroidJson: serviceJson ?? '',
      serviceInfoPlist: servicePlist ?? '',
      measurementId: measurementId ?? '',
      storageBucket: storageBucket ?? '',
      notificationCMApiLegacyServerKey: notificationLegacyServerKey ?? '',
      notificationVapidKey: notificationVapidKey ?? '',
      pushNotificationFlag: notificationFlag,
      isEnabled: isEnabled,
    );
  }

  Map<String, dynamic> toJson(final FirebaseConfigModel e) => <String, dynamic>{
        _appIdKey: e.appId,
        _androidServiceKey: e.serviceAndroidJson,
        _servicePlistKey: e.serviceInfoPlist,
        _apiKey: e.apiKey,
        _authDomain: e.authDomain,
        _isEnabledKey: e.isEnabled,
        _measurementIdKey: e.measurementId,
        _messagingSenderId: e.messagingSenderId,
        _notificationFlagKey: e.pushNotificationFlag,
        _notificationLegacyServerKey: e.notificationCMApiLegacyServerKey,
        _notificationVapidKey: e.notificationVapidKey,
        _projectIdKey: e.projectId,
        _storageBucket: e.storageBucket
      };

  FirebaseConfigModel copyWith(
    final FirebaseConfigModel e, {
    final String? serviceAndroidJson,
    final String? serviceInfoPlist,
    final String? appId,
    final String? apiKey,
    final String? projectId,
    final String? messagingSenderId,
    final String? authDomain,
    final String? storageBucket,
    final String? measurementId,
    final String? notificationVapidKey,
    final String? notificationCMApiLegacyServerKey,
    final bool? pushNotificationFlag,
    final bool? isEnabled,
  }) {
    final serviceAndroidJson0 = serviceAndroidJson ?? e.serviceAndroidJson;
    final serviceInfoPlist0 = serviceInfoPlist ?? e.serviceInfoPlist;
    final appId0 = appId ?? e.appId;
    final apiKey0 = apiKey ?? e.apiKey;
    final projectId0 = projectId ?? e.projectId;
    final messagingSenderId0 = messagingSenderId ?? e.messagingSenderId;
    final authDomain0 = authDomain ?? e.authDomain;
    final storageBucket0 = storageBucket ?? e.storageBucket;
    final measurementId0 = measurementId ?? e.measurementId;
    final notificationVapidKey0 =
        notificationVapidKey ?? e.notificationVapidKey;
    final notificationCMApiLegacyServerKey0 =
        notificationCMApiLegacyServerKey ?? e.notificationCMApiLegacyServerKey;
    final pushNotificationFlag0 =
        pushNotificationFlag ?? e.pushNotificationFlag;
    final isEnabled0 = isEnabled ?? e.isEnabled;
    if (serviceAndroidJson0.isNotEmpty &&
        serviceInfoPlist0.isNotEmpty &&
        appId0.isEmpty &&
        apiKey0.isNotEmpty &&
        projectId0.isNotEmpty &&
        messagingSenderId0.isNotEmpty &&
        authDomain0.isNotEmpty &&
        storageBucket0.isNotEmpty &&
        measurementId0.isNotEmpty &&
        notificationCMApiLegacyServerKey0.isNotEmpty &&
        _notificationLegacyServerKey.isNotEmpty &&
        notificationVapidKey0.isNotEmpty &&
        isEnabled0) {
      return FirebaseConfigModelInitialized(
        appId: appId0,
        apiKey: apiKey0,
        projectId: projectId0,
        messagingSenderId: messagingSenderId0,
        authDomain: authDomain0,
        measurementId: measurementId0,
        notificationVapidKey: notificationVapidKey0,
        notificationCMApiLegacyServerKey: notificationCMApiLegacyServerKey0,
        serviceAndroidJson: serviceAndroidJson0,
        serviceInfoPlist: serviceInfoPlist0,
        storageBucket: storageBucket0,
        pushNotificationFlag: pushNotificationFlag0,
        isEnabled: isEnabled0,
      );
    } else {
      return FirebaseConfigModelUninitialized(
        appId: appId0,
        apiKey: apiKey0,
        projectId: projectId0,
        messagingSenderId: messagingSenderId0,
        authDomain: authDomain0,
        measurementId: measurementId0,
        notificationVapidKey: notificationVapidKey0,
        notificationCMApiLegacyServerKey: notificationCMApiLegacyServerKey0,
        serviceAndroidJson: serviceAndroidJson0,
        serviceInfoPlist: serviceInfoPlist0,
        storageBucket: storageBucket0,
        pushNotificationFlag: pushNotificationFlag0,
        isEnabled: isEnabled0,
      );
    }
  }
}

abstract class FirebaseConfigModel extends Equatable {
  const FirebaseConfigModel({
    required this.pushNotificationFlag,
    required this.serviceAndroidJson,
    required this.serviceInfoPlist,
    required this.appId,
    required this.apiKey,
    required this.projectId,
    required this.messagingSenderId,
    required this.authDomain,
    required this.storageBucket,
    required this.measurementId,
    required this.notificationVapidKey,
    required this.notificationCMApiLegacyServerKey,
    required this.isEnabled,
  });

  /// For push notification
  final bool pushNotificationFlag;

  /// Android
  final String serviceAndroidJson;

  /// iOS
  final String serviceInfoPlist;
  final String appId;
  final String apiKey;
  final String projectId;
  final String messagingSenderId;
  final String authDomain;
  final String measurementId;
  final String storageBucket;
  final String notificationVapidKey;

  /// Cloud Messaging API
  final String notificationCMApiLegacyServerKey;
  final bool isEnabled;

  @override
  List<Object?> get props => [
        appId,
        apiKey,
        projectId,
        messagingSenderId,
        authDomain,
        isEnabled,
      ];
}

class FirebaseConfigModelInitialized extends FirebaseConfigModel {
  const FirebaseConfigModelInitialized({
    required super.appId,
    required super.apiKey,
    required super.projectId,
    required super.messagingSenderId,
    required super.authDomain,
    required super.measurementId,
    required super.notificationVapidKey,
    required super.notificationCMApiLegacyServerKey,
    required super.serviceAndroidJson,
    required super.serviceInfoPlist,
    required super.storageBucket,
    required super.pushNotificationFlag,
    required super.isEnabled,
  });
}

class FirebaseConfigModelUninitialized extends FirebaseConfigModel {
  const FirebaseConfigModelUninitialized({
    super.appId = '',
    super.apiKey = '',
    super.projectId = '',
    super.messagingSenderId = '',
    super.authDomain = '',
    super.measurementId = '',
    super.notificationVapidKey = '',
    super.notificationCMApiLegacyServerKey = '',
    super.serviceAndroidJson = '',
    super.serviceInfoPlist = '',
    super.storageBucket = '',
    super.pushNotificationFlag = false,
    super.isEnabled = false,
  });
}
