import 'package:either_dart/either.dart';
import 'package:theta_analytics/src/models/exception.dart';
import 'package:theta_analytics/src/service.dart';

/// Analytics client
/// How to use:
/// ```dart
/// final analyticsClient = AnalyticsClient(
///   prjId: 1,
///   token: 'xyz'
/// );
///
/// analyticsClient.insertEvent(
///   title: 'test',
///   description: 'test',
///   projectId: 1,
///   properties: {
///   'test': 'test',
///   },
/// );
/// ```

class AnalyticsClient {
  const AnalyticsClient(this._service);

  final AnalyticsService _service;

  /// Creates a new event
  /// How to use:
  /// ```dart
  /// analyticsClient.logEvent(
  ///   title: 'test',
  ///   description: 'test',
  ///   projectId: 1,
  ///   properties: {
  ///     'test': 'test',
  ///   },
  /// );
  /// ```
  Future<Either<Exception, void>> logEvent({
    required final String title,
    required final int? projectId,
    required final String? description,
    final Map<String, dynamic>? props,
  }) async {
    try {
      _service.logEvent(
          title: title,
          prjId: projectId,
          description: description,
          props: props);
      return const Right(null);
    } catch (e, trace) {
      return Left(
        AnalyticsException(
          'Error while inserting event: $e',
          stackTrace: trace,
        ),
      );
    }
  }

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
  Future<Either<Exception, void>> logDeleteReason({
    required final String reason,
    required final String? comment,
    required final int? projectId,
    required final String? description,
    required final Map<String, dynamic>? props,
  }) async {
    try {
      _service.logDeleteReason(
          reason: reason, comment: comment, prjId: projectId, props: props);
      return const Right(null);
    } catch (e, trace) {
      return Left(
        AnalyticsException(
          'Error while inserting an account delete reason: $e',
          stackTrace: trace,
        ),
      );
    }
  }

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
  Future<Either<Exception, void>> logException({
    required final String message,
    required final String? stackTrace,
  }) async {
    try {
      _service.logException(
        message: message,
        stackTrace: stackTrace,
      );
      return const Right(null);
    } catch (e, trace) {
      return Left(
        AnalyticsException(
          'Error while inserting an account delete reason: $e',
          stackTrace: trace,
        ),
      );
    }
  }
}
