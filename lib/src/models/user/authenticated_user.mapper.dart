// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'authenticated_user.dart';

class AuthenticatedUserMapper extends ClassMapperBase<AuthenticatedUser> {
  AuthenticatedUserMapper._();

  static AuthenticatedUserMapper? _instance;
  static AuthenticatedUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthenticatedUserMapper._());
      UserInfoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthenticatedUser';

  static int _$id(AuthenticatedUser v) => v.id;
  static const Field<AuthenticatedUser, int> _f$id = Field('id', _$id);
  static String _$username(AuthenticatedUser v) => v.username;
  static const Field<AuthenticatedUser, String> _f$username = Field(
    'username',
    _$username,
  );
  static String _$slug(AuthenticatedUser v) => v.slug;
  static const Field<AuthenticatedUser, String> _f$slug = Field('slug', _$slug);
  static String _$avatar(AuthenticatedUser v) => v.avatar;
  static const Field<AuthenticatedUser, String> _f$avatar = Field(
    'avatar',
    _$avatar,
    key: r'avatar_url',
  );
  static String _$theme(AuthenticatedUser v) => v.theme;
  static const Field<AuthenticatedUser, String> _f$theme = Field(
    'theme',
    _$theme,
    opt: true,
    def: 'black',
  );
  static bool _$staff(AuthenticatedUser v) => v.staff;
  static const Field<AuthenticatedUser, bool> _f$staff = Field(
    'staff',
    _$staff,
    key: r'is_stuff',
    opt: true,
    def: false,
  );
  static bool _$superuser(AuthenticatedUser v) => v.superuser;
  static const Field<AuthenticatedUser, bool> _f$superuser = Field(
    'superuser',
    _$superuser,
    key: r'is_superuser',
    opt: true,
    def: false,
  );
  static String _$about(AuthenticatedUser v) => v.about;
  static const Field<AuthenticatedUser, String> _f$about = Field(
    'about',
    _$about,
    opt: true,
    def: '',
  );
  static String _$favoriteTags(AuthenticatedUser v) => v.favoriteTags;
  static const Field<AuthenticatedUser, String> _f$favoriteTags = Field(
    'favoriteTags',
    _$favoriteTags,
    key: r'favorite_tags',
    opt: true,
    def: '',
  );
  static String? _$email(AuthenticatedUser v) => v.email;
  static const Field<AuthenticatedUser, String> _f$email = Field(
    'email',
    _$email,
    opt: true,
  );

  @override
  final MappableFields<AuthenticatedUser> fields = const {
    #id: _f$id,
    #username: _f$username,
    #slug: _f$slug,
    #avatar: _f$avatar,
    #theme: _f$theme,
    #staff: _f$staff,
    #superuser: _f$superuser,
    #about: _f$about,
    #favoriteTags: _f$favoriteTags,
    #email: _f$email,
  };

  static AuthenticatedUser _instantiate(DecodingData data) {
    return AuthenticatedUser(
      id: data.dec(_f$id),
      username: data.dec(_f$username),
      slug: data.dec(_f$slug),
      avatar: data.dec(_f$avatar),
      theme: data.dec(_f$theme),
      staff: data.dec(_f$staff),
      superuser: data.dec(_f$superuser),
      about: data.dec(_f$about),
      favoriteTags: data.dec(_f$favoriteTags),
      email: data.dec(_f$email),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AuthenticatedUser fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthenticatedUser>(map);
  }

  static AuthenticatedUser fromJson(String json) {
    return ensureInitialized().decodeJson<AuthenticatedUser>(json);
  }
}

mixin AuthenticatedUserMappable {
  String toJson() {
    return AuthenticatedUserMapper.ensureInitialized()
        .encodeJson<AuthenticatedUser>(this as AuthenticatedUser);
  }

  Map<String, dynamic> toMap() {
    return AuthenticatedUserMapper.ensureInitialized()
        .encodeMap<AuthenticatedUser>(this as AuthenticatedUser);
  }

  AuthenticatedUserCopyWith<
    AuthenticatedUser,
    AuthenticatedUser,
    AuthenticatedUser
  >
  get copyWith =>
      _AuthenticatedUserCopyWithImpl<AuthenticatedUser, AuthenticatedUser>(
        this as AuthenticatedUser,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AuthenticatedUserMapper.ensureInitialized().stringifyValue(
      this as AuthenticatedUser,
    );
  }
}

extension AuthenticatedUserValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthenticatedUser, $Out> {
  AuthenticatedUserCopyWith<$R, AuthenticatedUser, $Out>
  get $asAuthenticatedUser => $base.as(
    (v, t, t2) => _AuthenticatedUserCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class AuthenticatedUserCopyWith<
  $R,
  $In extends AuthenticatedUser,
  $Out
>
    implements UserInfoCopyWith<$R, $In, $Out> {
  @override
  $R call({
    int? id,
    String? username,
    String? slug,
    String? avatar,
    String? theme,
    bool? staff,
    bool? superuser,
    String? about,
    String? favoriteTags,
    String? email,
  });
  AuthenticatedUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _AuthenticatedUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthenticatedUser, $Out>
    implements AuthenticatedUserCopyWith<$R, AuthenticatedUser, $Out> {
  _AuthenticatedUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthenticatedUser> $mapper =
      AuthenticatedUserMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? username,
    String? slug,
    String? avatar,
    String? theme,
    bool? staff,
    bool? superuser,
    String? about,
    String? favoriteTags,
    Object? email = $none,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (username != null) #username: username,
      if (slug != null) #slug: slug,
      if (avatar != null) #avatar: avatar,
      if (theme != null) #theme: theme,
      if (staff != null) #staff: staff,
      if (superuser != null) #superuser: superuser,
      if (about != null) #about: about,
      if (favoriteTags != null) #favoriteTags: favoriteTags,
      if (email != $none) #email: email,
    }),
  );
  @override
  AuthenticatedUser $make(CopyWithData data) => AuthenticatedUser(
    id: data.get(#id, or: $value.id),
    username: data.get(#username, or: $value.username),
    slug: data.get(#slug, or: $value.slug),
    avatar: data.get(#avatar, or: $value.avatar),
    theme: data.get(#theme, or: $value.theme),
    staff: data.get(#staff, or: $value.staff),
    superuser: data.get(#superuser, or: $value.superuser),
    about: data.get(#about, or: $value.about),
    favoriteTags: data.get(#favoriteTags, or: $value.favoriteTags),
    email: data.get(#email, or: $value.email),
  );

  @override
  AuthenticatedUserCopyWith<$R2, AuthenticatedUser, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AuthenticatedUserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

