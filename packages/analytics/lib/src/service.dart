import 'package:theta_analytics/src/constants.dart';
import 'package:theta_analytics/src/utils/info.dart';

/// Analytics service.
class AnalyticsService {
  AnalyticsService(this._deviceInfo);

  final DeviceInfo _deviceInfo;

  static const Constants _constants = Constants();

  DateTime _lastSessionTime = DateTime.now().toUtc();
  String _sessionId = _constants.uuid.v4();

  /// Get session id.
  /// If the last session time is more than 4 hours ago, create a new session id.
  String _getSessionId() {
    final now = DateTime.now().toUtc();
    final difference = now.difference(_lastSessionTime);
    if (difference > _constants.defaultSessionTimeout) {
      _sessionId = _constants.uuid.v4();
    }
    _lastSessionTime = now;
    return _sessionId;
  }

  /// Create a new event.
  ///
  /// How to use:
  /// ```dart
  /// analyticsClient.logEvent(
  ///   title: 'title',
  ///   prjId: prjId,
  ///   description: 'optional description',
  ///     properties: <String, dynamic>{
  ///     'test': 'test',
  ///   },
  /// );
  /// ```
  ///
  /// ❗️ This method should be wrapped in a try/catch block.
  Map<String, dynamic> logEvent({
    required final String title,
    required final int? prjId,
    required final String? description,
    required final Map<String, dynamic>? props,
  }) =>
      {
        'session_id': _getSessionId(),
        'title': title,
        'description': description,
        'project_id': prjId,
        'properties': props,
        'device_info': _deviceInfo.toJson(),
      };

  /// Create a new exception log.
  ///
  /// How to use:
  /// ```dart
  /// try {
  ///   ...
  /// } catch(error, stackTrace) {
  ///   analyticsClient.logException(
  ///     message: 'Error: $error',
  ///     stackTrace: stackTrace.toString(),
  ///   );
  /// }
  /// ```
  ///
  /// ❗️ This method should be wrapped in a try/catch block.
  Map<String, dynamic> logException({
    required final String message,
    required final String? stackTrace,
  }) =>
      {
        'session_id': _getSessionId(),
        'message': message,
        'stack_trace': stackTrace,
        'device_info': _deviceInfo.toJson(),
        'created_at': DateTime.now().toUtc().toIso8601String(),
      };
}
