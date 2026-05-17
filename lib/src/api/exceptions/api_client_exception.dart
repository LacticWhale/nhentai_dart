import 'package:http/http.dart' as http;

/// Thrown when the server response is not valid JSON or other client‑side issues.
class ApiClientException implements Exception {
  /// Creates api client exception.
  const ApiClientException(
    this.message, {
    this.response,
    this.originalException,
  });

  /// Human‑readable error message.
  final String message;

  /// The original HTTP response, if available.
  final http.BaseResponse? response;

  /// The original exception (e.g. FormatException), if any.
  final Object? originalException;

  @override
  String toString() => 'ApiClientException: $message';
}
