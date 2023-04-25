import 'package:supabase/supabase.dart';
import 'package:theta_analytics/src/constants.dart';
import 'package:theta_analytics/src/utils/info.dart';

/// Analytics service.
class AnalyticsService {
  AnalyticsService(this._supabase, this._deviceInfo);

  final SupabaseClient _supabase;
  final DeviceInfo _deviceInfo;

  static const Constants _constants = Constants();
  static const _eventsTable = 'analytics';
  static const _errorsTable = 'errors';
  static const _deleteReasonsTable = 'delete_reasons';

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
  Future<void> logEvent({
    required final String title,
    required final int? prjId,
    required final String? description,
    required final Map<String, dynamic>? props,
  }) async =>
      await _supabase.from(_eventsTable).insert({
        'session_id': _getSessionId(),
        'title': title,
        'description': description,
        'project_id': prjId,
        'properties': props,
        'device_info': _deviceInfo.toJson(),
        'created_at': DateTime.now().toUtc().toIso8601String(),
      });

  /// Create a new account delete reason.
  /// It's used to document why a user deletes its account.
  ///
  /// How to use:
  /// ```dart
  /// analyticsClient.logDeleteReason(
  ///   delete_reasons: 'test',
  ///   comment: 'test',
  ///   properties: <String, dynamic>{
  ///     'test': 'test',
  ///   },
  /// );
  /// ```
  ///
  /// ❗️ This method should be wrapped in a try/catch block.
  Future<void> logDeleteReason({
    required final String reason,
    required final String? comment,
    required final int? prjId,
    required final Map<String, dynamic>? props,
  }) async =>
      await _supabase.from(_deleteReasonsTable).insert({
        'session_id': _getSessionId(),
        'delete_reasons': reason,
        'comment': comment,
        'properties': props,
        'device_info': _deviceInfo.toJson(),
        'created_at': DateTime.now().toUtc().toIso8601String(),
      });

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
  Future<void> logException({
    required final String message,
    required final String? stackTrace,
  }) async =>
      await _supabase.from(_errorsTable).insert({
        'session_id': _getSessionId(),
        'message': message,
        'stack_trace': stackTrace,
        'device_info': _deviceInfo.toJson(),
        'created_at': DateTime.now().toUtc().toIso8601String(),
      });
}
