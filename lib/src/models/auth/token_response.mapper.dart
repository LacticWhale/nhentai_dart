// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'token_response.dart';

class TokenResponseMapper extends ClassMapperBase<TokenResponse> {
  TokenResponseMapper._();

  static TokenResponseMapper? _instance;
  static TokenResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TokenResponseMapper._());
      UserInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TokenResponse';

  static String _$accessToken(TokenResponse v) => v.accessToken;
  static const Field<TokenResponse, String> _f$accessToken = Field(
    'accessToken',
    _$accessToken,
    key: r'access_token',
  );
  static String _$refreshToken(TokenResponse v) => v.refreshToken;
  static const Field<TokenResponse, String> _f$refreshToken = Field(
    'refreshToken',
    _$refreshToken,
    key: r'refresh_token',
  );
  static UserInfo _$user(TokenResponse v) => v.user;
  static const Field<TokenResponse, UserInfo> _f$user = Field('user', _$user);

  @override
  final MappableFields<TokenResponse> fields = const {
    #accessToken: _f$accessToken,
    #refreshToken: _f$refreshToken,
    #user: _f$user,
  };

  static TokenResponse _instantiate(DecodingData data) {
    return TokenResponse(
      accessToken: data.dec(_f$accessToken),
      refreshToken: data.dec(_f$refreshToken),
      user: data.dec(_f$user),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TokenResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TokenResponse>(map);
  }

  static TokenResponse fromJson(String json) {
    return ensureInitialized().decodeJson<TokenResponse>(json);
  }
}

mixin TokenResponseMappable {
  String toJson() {
    return TokenResponseMapper.ensureInitialized().encodeJson<TokenResponse>(
      this as TokenResponse,
    );
  }

  Map<String, dynamic> toMap() {
    return TokenResponseMapper.ensureInitialized().encodeMap<TokenResponse>(
      this as TokenResponse,
    );
  }

  TokenResponseCopyWith<TokenResponse, TokenResponse, TokenResponse>
  get copyWith => _TokenResponseCopyWithImpl<TokenResponse, TokenResponse>(
    this as TokenResponse,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return TokenResponseMapper.ensureInitialized().stringifyValue(
      this as TokenResponse,
    );
  }
}

extension TokenResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TokenResponse, $Out> {
  TokenResponseCopyWith<$R, TokenResponse, $Out> get $asTokenResponse =>
      $base.as((v, t, t2) => _TokenResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TokenResponseCopyWith<$R, $In extends TokenResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserInfoCopyWith<$R, UserInfo, UserInfo> get user;
  $R call({String? accessToken, String? refreshToken, UserInfo? user});
  TokenResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TokenResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TokenResponse, $Out>
    implements TokenResponseCopyWith<$R, TokenResponse, $Out> {
  _TokenResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TokenResponse> $mapper =
      TokenResponseMapper.ensureInitialized();
  @override
  UserInfoCopyWith<$R, UserInfo, UserInfo> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call({String? accessToken, String? refreshToken, UserInfo? user}) =>
      $apply(
        FieldCopyWithData({
          if (accessToken != null) #accessToken: accessToken,
          if (refreshToken != null) #refreshToken: refreshToken,
          if (user != null) #user: user,
        }),
      );
  @override
  TokenResponse $make(CopyWithData data) => TokenResponse(
    accessToken: data.get(#accessToken, or: $value.accessToken),
    refreshToken: data.get(#refreshToken, or: $value.refreshToken),
    user: data.get(#user, or: $value.user),
  );

  @override
  TokenResponseCopyWith<$R2, TokenResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TokenResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

