// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static int _$id(User v) => v.id;
  static const Field<User, int> _f$id = Field('id', _$id);
  static String _$username(User v) => v.username;
  static const Field<User, String> _f$username = Field('username', _$username);
  static String _$slug(User v) => v.slug;
  static const Field<User, String> _f$slug = Field('slug', _$slug);
  static String _$avatar(User v) => v.avatar;
  static const Field<User, String> _f$avatar = Field(
    'avatar',
    _$avatar,
    key: r'avatar_url',
  );
  static bool _$superuser(User v) => v.superuser;
  static const Field<User, bool> _f$superuser = Field(
    'superuser',
    _$superuser,
    key: r'is_superuser',
    opt: true,
    def: false,
  );
  static bool _$staff(User v) => v.staff;
  static const Field<User, bool> _f$staff = Field(
    'staff',
    _$staff,
    key: r'is_stuff',
    opt: true,
    def: false,
  );

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #username: _f$username,
    #slug: _f$slug,
    #avatar: _f$avatar,
    #superuser: _f$superuser,
    #staff: _f$staff,
  };

  static User _instantiate(DecodingData data) {
    return User(
      id: data.dec(_f$id),
      username: data.dec(_f$username),
      slug: data.dec(_f$slug),
      avatar: data.dec(_f$avatar),
      superuser: data.dec(_f$superuser),
      staff: data.dec(_f$staff),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl<User, User>(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? id,
    String? username,
    String? slug,
    String? avatar,
    bool? superuser,
    bool? staff,
  });
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call({
    int? id,
    String? username,
    String? slug,
    String? avatar,
    bool? superuser,
    bool? staff,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (username != null) #username: username,
      if (slug != null) #slug: slug,
      if (avatar != null) #avatar: avatar,
      if (superuser != null) #superuser: superuser,
      if (staff != null) #staff: staff,
    }),
  );
  @override
  User $make(CopyWithData data) => User(
    id: data.get(#id, or: $value.id),
    username: data.get(#username, or: $value.username),
    slug: data.get(#slug, or: $value.slug),
    avatar: data.get(#avatar, or: $value.avatar),
    superuser: data.get(#superuser, or: $value.superuser),
    staff: data.get(#staff, or: $value.staff),
  );

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

