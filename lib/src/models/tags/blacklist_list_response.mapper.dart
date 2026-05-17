// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'blacklist_list_response.dart';

class BlacklistListResponseMapper
    extends ClassMapperBase<BlacklistListResponse> {
  BlacklistListResponseMapper._();

  static BlacklistListResponseMapper? _instance;
  static BlacklistListResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlacklistListResponseMapper._());
      TagMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BlacklistListResponse';

  static List<Tag> _$tags(BlacklistListResponse v) => v.tags;
  static const Field<BlacklistListResponse, List<Tag>> _f$tags = Field(
    'tags',
    _$tags,
  );
  static int _$count(BlacklistListResponse v) => v.count;
  static const Field<BlacklistListResponse, int> _f$count = Field(
    'count',
    _$count,
  );

  @override
  final MappableFields<BlacklistListResponse> fields = const {
    #tags: _f$tags,
    #count: _f$count,
  };

  static BlacklistListResponse _instantiate(DecodingData data) {
    return BlacklistListResponse(
      tags: data.dec(_f$tags),
      count: data.dec(_f$count),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlacklistListResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlacklistListResponse>(map);
  }

  static BlacklistListResponse fromJson(String json) {
    return ensureInitialized().decodeJson<BlacklistListResponse>(json);
  }
}

mixin BlacklistListResponseMappable {
  String toJson() {
    return BlacklistListResponseMapper.ensureInitialized()
        .encodeJson<BlacklistListResponse>(this as BlacklistListResponse);
  }

  Map<String, dynamic> toMap() {
    return BlacklistListResponseMapper.ensureInitialized()
        .encodeMap<BlacklistListResponse>(this as BlacklistListResponse);
  }

  BlacklistListResponseCopyWith<
    BlacklistListResponse,
    BlacklistListResponse,
    BlacklistListResponse
  >
  get copyWith =>
      _BlacklistListResponseCopyWithImpl<
        BlacklistListResponse,
        BlacklistListResponse
      >(this as BlacklistListResponse, $identity, $identity);
  @override
  String toString() {
    return BlacklistListResponseMapper.ensureInitialized().stringifyValue(
      this as BlacklistListResponse,
    );
  }
}

extension BlacklistListResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlacklistListResponse, $Out> {
  BlacklistListResponseCopyWith<$R, BlacklistListResponse, $Out>
  get $asBlacklistListResponse => $base.as(
    (v, t, t2) => _BlacklistListResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class BlacklistListResponseCopyWith<
  $R,
  $In extends BlacklistListResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Tag, TagCopyWith<$R, Tag, Tag>> get tags;
  $R call({List<Tag>? tags, int? count});
  BlacklistListResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BlacklistListResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlacklistListResponse, $Out>
    implements BlacklistListResponseCopyWith<$R, BlacklistListResponse, $Out> {
  _BlacklistListResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlacklistListResponse> $mapper =
      BlacklistListResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Tag, TagCopyWith<$R, Tag, Tag>> get tags => ListCopyWith(
    $value.tags,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tags: v),
  );
  @override
  $R call({List<Tag>? tags, int? count}) => $apply(
    FieldCopyWithData({
      if (tags != null) #tags: tags,
      if (count != null) #count: count,
    }),
  );
  @override
  BlacklistListResponse $make(CopyWithData data) => BlacklistListResponse(
    tags: data.get(#tags, or: $value.tags),
    count: data.get(#count, or: $value.count),
  );

  @override
  BlacklistListResponseCopyWith<$R2, BlacklistListResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BlacklistListResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

