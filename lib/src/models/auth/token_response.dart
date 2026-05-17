import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';
import '../../mapper_container_extension.dart';
import 'user_info.dart';

part 'token_response.mapper.dart';


/// Response with authenticated user tokens.
@immutable
@MappableClass()
class TokenResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  }) with TokenResponseMappable {
  /// Token response.
  this;

  /// Parses [TokenResponse] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [TokenResponse] object.
  /// * [TokenResponse] - then value will be returned as-is.
  static TokenResponse Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<TokenResponse>;

  /// Parses [List] of [TokenResponse] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [TokenResponse] - then value will be returned as-is.
  static List<TokenResponse> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<TokenResponse>>;

  /// Parses JSON string into [TokenResponse] similarly to [parse].
  static TokenResponse Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<TokenResponse>;

  /// Parses JSON string into [List] of [TokenResponse] instances similarly to
  /// [parseList].
  static List<TokenResponse> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<TokenResponse>>;

  /// Access token (JWT) for API requests.
  @MappableField(key: 'access_token')
  final String accessToken;

  /// Refresh token for obtaining new access tokens.
  @MappableField(key: 'refresh_token')
  final String refreshToken;

  /// Basic user information.
  @MappableField(key: 'user')
  final UserInfo user;
}
