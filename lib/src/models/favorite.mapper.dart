// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'favorite.dart';

class FavoriteResponseMapper extends ClassMapperBase<FavoriteResponse> {
  FavoriteResponseMapper._();

  static FavoriteResponseMapper? _instance;
  static FavoriteResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FavoriteResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FavoriteResponse';

  static bool _$favorited(FavoriteResponse v) => v.favorited;
  static const Field<FavoriteResponse, bool> _f$favorited = Field(
    'favorited',
    _$favorited,
  );
  static int? _$count(FavoriteResponse v) => v.count;
  static const Field<FavoriteResponse, int> _f$count = Field(
    'count',
    _$count,
    key: r'num_favorites',
    opt: true,
  );

  @override
  final MappableFields<FavoriteResponse> fields = const {
    #favorited: _f$favorited,
    #count: _f$count,
  };

  static FavoriteResponse _instantiate(DecodingData data) {
    return FavoriteResponse(
      favorited: data.dec(_f$favorited),
      count: data.dec(_f$count),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FavoriteResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FavoriteResponse>(map);
  }

  static FavoriteResponse fromJson(String json) {
    return ensureInitialized().decodeJson<FavoriteResponse>(json);
  }
}

mixin FavoriteResponseMappable {
  String toJson() {
    return FavoriteResponseMapper.ensureInitialized()
        .encodeJson<FavoriteResponse>(this as FavoriteResponse);
  }

  Map<String, dynamic> toMap() {
    return FavoriteResponseMapper.ensureInitialized()
        .encodeMap<FavoriteResponse>(this as FavoriteResponse);
  }

  FavoriteResponseCopyWith<FavoriteResponse, FavoriteResponse, FavoriteResponse>
  get copyWith =>
      _FavoriteResponseCopyWithImpl<FavoriteResponse, FavoriteResponse>(
        this as FavoriteResponse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FavoriteResponseMapper.ensureInitialized().stringifyValue(
      this as FavoriteResponse,
    );
  }
}

extension FavoriteResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FavoriteResponse, $Out> {
  FavoriteResponseCopyWith<$R, FavoriteResponse, $Out>
  get $asFavoriteResponse =>
      $base.as((v, t, t2) => _FavoriteResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FavoriteResponseCopyWith<$R, $In extends FavoriteResponse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? favorited, int? count});
  FavoriteResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _FavoriteResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FavoriteResponse, $Out>
    implements FavoriteResponseCopyWith<$R, FavoriteResponse, $Out> {
  _FavoriteResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FavoriteResponse> $mapper =
      FavoriteResponseMapper.ensureInitialized();
  @override
  $R call({bool? favorited, Object? count = $none}) => $apply(
    FieldCopyWithData({
      if (favorited != null) #favorited: favorited,
      if (count != $none) #count: count,
    }),
  );
  @override
  FavoriteResponse $make(CopyWithData data) => FavoriteResponse(
    favorited: data.get(#favorited, or: $value.favorited),
    count: data.get(#count, or: $value.count),
  );

  @override
  FavoriteResponseCopyWith<$R2, FavoriteResponse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FavoriteResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

