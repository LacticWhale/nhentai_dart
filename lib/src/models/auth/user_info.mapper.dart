// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_info.dart';

class UserInfoMapper extends ClassMapperBase<UserInfo> {
  UserInfoMapper._();

  static UserInfoMapper? _instance;
  static UserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserInfoMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserInfo';

  static int _$id(UserInfo v) => v.id;
  static const Field<UserInfo, int> _f$id = Field('id', _$id);
  static String _$username(UserInfo v) => v.username;
  static const Field<UserInfo, String> _f$username = Field(
    'username',
    _$username,
  );
  static String _$slug(UserInfo v) => v.slug;
  static const Field<UserInfo, String> _f$slug = Field('slug', _$slug);
  static String _$avatar(UserInfo v) => v.avatar;
  static const Field<UserInfo, String> _f$avatar = Field(
    'avatar',
    _$avatar,
    key: r'avatar_url',
  );
  static bool _$staff(UserInfo v) => v.staff;
  static const Field<UserInfo, bool> _f$staff = Field(
    'staff',
    _$staff,
    key: r'is_stuff',
    opt: true,
    def: false,
  );
  static bool _$superuser(UserInfo v) => v.superuser;
  static const Field<UserInfo, bool> _f$superuser = Field(
    'superuser',
    _$superuser,
    key: r'is_superuser',
    opt: true,
    def: false,
  );
  static String _$theme(UserInfo v) => v.theme;
  static const Field<UserInfo, String> _f$theme = Field(
    'theme',
    _$theme,
    opt: true,
    def: 'black',
  );

  @override
  final MappableFields<UserInfo> fields = const {
    #id: _f$id,
    #username: _f$username,
    #slug: _f$slug,
    #avatar: _f$avatar,
    #staff: _f$staff,
    #superuser: _f$superuser,
    #theme: _f$theme,
  };

  static UserInfo _instantiate(DecodingData data) {
    return UserInfo(
      id: data.dec(_f$id),
      username: data.dec(_f$username),
      slug: data.dec(_f$slug),
      avatar: data.dec(_f$avatar),
      staff: data.dec(_f$staff),
      superuser: data.dec(_f$superuser),
      theme: data.dec(_f$theme),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static UserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserInfo>(map);
  }

  static UserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<UserInfo>(json);
  }
}

mixin UserInfoMappable {
  String toJson() {
    return UserInfoMapper.ensureInitialized().encodeJson<UserInfo>(
      this as UserInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return UserInfoMapper.ensureInitialized().encodeMap<UserInfo>(
      this as UserInfo,
    );
  }

  UserInfoCopyWith<UserInfo, UserInfo, UserInfo> get copyWith =>
      _UserInfoCopyWithImpl<UserInfo, UserInfo>(
        this as UserInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return UserInfoMapper.ensureInitialized().stringifyValue(this as UserInfo);
  }
}

extension UserInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserInfo, $Out> {
  UserInfoCopyWith<$R, UserInfo, $Out> get $asUserInfo =>
      $base.as((v, t, t2) => _UserInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserInfoCopyWith<$R, $In extends UserInfo, $Out>
    implements UserCopyWith<$R, $In, $Out> {
  @override
  $R call({
    int? id,
    String? username,
    String? slug,
    String? avatar,
    bool? staff,
    bool? superuser,
    String? theme,
  });
  UserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserInfo, $Out>
    implements UserInfoCopyWith<$R, UserInfo, $Out> {
  _UserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserInfo> $mapper =
      UserInfoMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? username,
    String? slug,
    String? avatar,
    bool? staff,
    bool? superuser,
    String? theme,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (username != null) #username: username,
      if (slug != null) #slug: slug,
      if (avatar != null) #avatar: avatar,
      if (staff != null) #staff: staff,
      if (superuser != null) #superuser: superuser,
      if (theme != null) #theme: theme,
    }),
  );
  @override
  UserInfo $make(CopyWithData data) => UserInfo(
    id: data.get(#id, or: $value.id),
    username: data.get(#username, or: $value.username),
    slug: data.get(#slug, or: $value.slug),
    avatar: data.get(#avatar, or: $value.avatar),
    staff: data.get(#staff, or: $value.staff),
    superuser: data.get(#superuser, or: $value.superuser),
    theme: data.get(#theme, or: $value.theme),
  );

  @override
  UserInfoCopyWith<$R2, UserInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _UserInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

