/// Authentication type.
enum AuthType {
  /// Public access (no authentication).
  none,

  /// Bearer token (`User <token>`).
  user,

  /// API Key (`Key <api_key>`).
  apiKey,
}
