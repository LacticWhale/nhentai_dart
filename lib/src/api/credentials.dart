/// Credentials for API authentication.
sealed class Credentials {
  /// The authentication header value to be sent with API requests.
  String get authentication;
}

/// Credentials for user authentication (Bearer token).
final class AuthCredentials implements Credentials {
  /// Creates auth credentials with the given access and refresh tokens.
  const AuthCredentials({required this.accessToken, required this.refreshToken});

  /// The access token (Bearer) for authenticated requests.
  final String accessToken;

  /// The refresh token for obtaining new access tokens when the current one expires.
  final String refreshToken;

  @override
  String get authentication => 'User $accessToken';
}

/// Credentials for API key authentication.
final class ApiCredentials implements Credentials {
  /// Creates API credentials with the given API key.
  const ApiCredentials({required this.apiKey});

  /// The API key for authenticated requests.
  final String apiKey;

  @override
  String get authentication => 'Key $apiKey';
}
