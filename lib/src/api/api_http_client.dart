import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';
import 'package:http/http.dart' as http;

import '../../nhentai.dart';


export 'auth_type.dart';
export 'exceptions/api_client_exception.dart';
export 'exceptions/client_exception.dart';


/// Customizable HTTP client with before‑request hook and automatic JSON mapping.
class ApiHttpClient {
  /// Creates an API client with an optional custom [client] and [baseUrl].
  ApiHttpClient({
    required this.userAgent,
    required this.baseUrl,
    http.Client? client,
    this.beforeRequest,
  }) : _client = client ?? http.Client();

  /// The underlying HTTP client.
  final http.Client _client;

  /// Sets User-Agent header. Preferred: AppName/version (contact or project URL)
  final String userAgent;

  /// Base URL of the API.
  final String baseUrl;

  /// User token (Bearer) or Api key if authenticated.
  Credentials? _credentials;

  /// Optional callback called before every request – useful for logging or header modification.
  final BeforeRequestCallback? beforeRequest;

  /// Sets authentication.
  // ignore: avoid_setters_without_getters
  set credentials(Credentials? credentials) => _credentials = credentials;

  /// Clears any stored authentication credentials.
  void clearAuth() => credentials = null;

  /// Returns the current authentication type.
  AuthType get authType => switch (_credentials) {
    null => AuthType.none,
    AuthCredentials() => AuthType.user,
    ApiCredentials() => AuthType.apiKey,
  };

  /// Performs an HTTP request and returns the parsed JSON (Map or List).
  Future<dynamic> _requestJson({
    required String method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    dynamic body,
    bool includeAuth = true,
  }) async {
    final uri = Uri.parse('$baseUrl$path')
        .replace(queryParameters: _encodeQuery(queryParameters));
    final request = http.Request(method.toUpperCase(), uri);

    request.headers['Content-Type'] = 'application/json';
    request.headers['User-Agent'] = userAgent;
    if (headers != null) {
      request.headers.addAll(headers);
    }
    if (includeAuth && _credentials != null) {
      request.headers['Authorization'] = _credentials!.authentication;
    }

    if (body != null) {
      request.body = jsonEncode(body);
    }

    beforeRequest?.call(request);

    final streamedResponse = await _client.send(request);
    final response = await http.Response.fromStream(streamedResponse);

    dynamic json;
    try {
      json = response.body.isEmpty ? null : jsonDecode(response.body);
    } on FormatException catch (e) {
      throw ApiClientException(
        'Server returned non-JSON response',
        response: response,
        originalException: e,
      );
    }

    if (response.statusCode >= 400 && json is Map<String, dynamic>) {
      final errorMsg = json['error'];
      if (errorMsg is String) {
        throw ApiException(errorMsg, json);
      }
      if (errorMsg == true) {
        throw ApiException('Generic API error', json);
      }
      throw ApiException(
        'Request failed with status ${response.statusCode}',
        json,
      );
    }

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw ApiException('Unexpected status code ${response.statusCode}', json);
    }

    return json;
  }

  /// Convenience for GET requests returning raw JSON.
  Future<dynamic> getJson(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) =>
      _requestJson(
        method: 'GET',
        path: path,
        queryParameters: queryParameters,
      );

  /// Convenience for POST requests.
  Future<dynamic> postJson(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) =>
      _requestJson(
        method: 'POST',
        path: path,
        queryParameters: queryParameters,
        body: body,
      );

  /// Convenience for PUT requests.
  Future<dynamic> putJson(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) =>
      _requestJson(
        method: 'PUT',
        path: path,
        queryParameters: queryParameters,
        body: body,
      );

  /// Convenience for DELETE requests.
  Future<dynamic> deleteJson(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) =>
      _requestJson(
        method: 'DELETE',
        path: path,
        queryParameters: queryParameters,
      );

  /// Generic request that maps the JSON response to a Dart object using MapperContainer.
  Future<T> requestModel<T>({
    required String method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    dynamic body,
    bool includeAuth = true,
  }) async {
    final json = await _requestJson(
      method: method,
      path: path,
      queryParameters: queryParameters,
      headers: headers,
      body: body,
      includeAuth: includeAuth,
    );
    if (json == null) {
      throw const ApiClientException('Expected non-null response');
    }
    return MapperContainer.globals.fromValue<T>(json);
  }

  // Shortcuts for common methods
  /// GET request that maps to model [T].
  Future<T> getModel<T>(String path, {Map<String, dynamic>? queryParameters}) =>
      requestModel<T>(
        method: 'GET',
        path: path,
        queryParameters: queryParameters,
      );

  /// POST request that maps to model [T].
  Future<T> postModel<T>(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    bool includeAuth = true,
  }) =>
      requestModel<T>(
        method: 'POST',
        path: path,
        queryParameters: queryParameters,
        body: body,
        includeAuth: includeAuth,
      );

  /// PUT request that maps to model [T].
  Future<T> putModel<T>(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) =>
      requestModel<T>(
        method: 'PUT',
        path: path,
        queryParameters: queryParameters,
        body: body,
      );

  /// DELETE request that maps to model [T].
  Future<T> deleteModel<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) =>
      requestModel<T>(
        method: 'DELETE',
        path: path,
        queryParameters: queryParameters,
      );

  /// Follows redirects and returns the final location URL (does not work on Web).
  @Deprecated('Since 2.0')
  Future<String?> getRedirectUrl(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final uri = Uri.parse('$baseUrl$path')
        .replace(queryParameters: _encodeQuery(queryParameters));
    final request = http.Request('GET', uri)..followRedirects = false;
    beforeRequest?.call(request);
    final response = await _client.send(request);
    return response.headers['location'];
  }

  Map<String, String> _encodeQuery(Map<String, dynamic>? params) {
    if (params == null) {
      return {};
    }
    return params.map((k, v) => MapEntry(k, v.toString()));
  }
}
