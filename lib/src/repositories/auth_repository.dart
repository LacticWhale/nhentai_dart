import '../api/api_http_client.dart';
import '../models/auth.dart';
import '../models/auth/token_response.dart';


/// Collection of api methods related to authentication operations.
class AuthRepository {
  /// Creates an auth repository with the given API client.
  const AuthRepository(this._client);

  /// The API client used for network requests.
  final ApiHttpClient _client;

  /// Returns true if either user key or api key is presented.
  bool get authenticated => _client.authType != .none;

  /// Authenticate using username/email and password.
  Future<TokenResponse> login({
    required String username,
    required String password,
    required String captchaResponse,
    required String challenge,
    required int nonce,
  }) =>
      _client.postModel<TokenResponse>(
        '/api/v2/auth/login',
        body: {
          'username': username,
          'password': password,
          'captcha_response': captchaResponse,
          'pow_challenge': challenge,
          'pow_nonce': nonce.toString(),
        },
        includeAuth: false,
      );

  /// Refresh an expired access token using a refresh token.
  Future<TokenResponse> refresh(String refreshToken) =>
      _client.postModel<TokenResponse>(
        '/api/v2/auth/refresh',
        body: {'refresh_token': refreshToken},
        includeAuth: false,
      );

  /// Log out (revoke the given refresh token).
  Future<void> logout(String refreshToken) => _client
      .postJson('/api/v2/auth/logout', body: {'refresh_token': refreshToken});

  // TODO(user): Auth methods.
}
