/// Thrown when the API returns a JSON error field.
class ApiException implements Exception {
  /// Creates api exception.
  const ApiException(
    this.message, [
    this.details,
  ]);

  /// Human‑readable error message.
  final String message;

  /// Optional additional error details (the full JSON response).
  final dynamic details;

  @override
  String toString() => 'ApiException: $message';
}
