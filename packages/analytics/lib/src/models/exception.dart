class AnalyticsException implements Exception {
  AnalyticsException(
    this.message, {
    this.stackTrace,
    this.code,
  });

  final String message;
  final String? code;
  final StackTrace? stackTrace;
  final String createdAt = DateTime.now().toIso8601String();

  @override
  String toString() =>
      'Exception, error: $message, code: $code, stack trace: $stackTrace, created at: $createdAt';
}
