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
  ///   properties: {
  ///     'test': 'test',
  ///   },
  /// );
  /// ```
  Either<Exception, Map<String, dynamic>> logEvent({
    required final String title,
    required final String? description,
    final Map<String, dynamic>? props,
  }) {
    try {
      return Right(_service.logEvent(
          title: title, description: description, props: props));
    } catch (e, trace) {
      return Left(
        AnalyticsException(
          'Error while inserting event: $e',
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
  Either<Exception, Map<String, dynamic>> logException({
    required final String message,
    required final String? stackTrace,
  }) {
    try {
      return Right(_service.logException(
        message: message,
        stackTrace: stackTrace,
      ));
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
