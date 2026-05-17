// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'blacklist_update_request.dart';

class BlacklistUpdateRequestMapper
    extends ClassMapperBase<BlacklistUpdateRequest> {
  BlacklistUpdateRequestMapper._();

  static BlacklistUpdateRequestMapper? _instance;
  static BlacklistUpdateRequestMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BlacklistUpdateRequestMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BlacklistUpdateRequest';

  static List<int> _$added(BlacklistUpdateRequest v) => v.added;
  static const Field<BlacklistUpdateRequest, List<int>> _f$added = Field(
    'added',
    _$added,
    opt: true,
    def: const [],
  );
  static List<int> _$removed(BlacklistUpdateRequest v) => v.removed;
  static const Field<BlacklistUpdateRequest, List<int>> _f$removed = Field(
    'removed',
    _$removed,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<BlacklistUpdateRequest> fields = const {
    #added: _f$added,
    #removed: _f$removed,
  };

  static BlacklistUpdateRequest _instantiate(DecodingData data) {
    return BlacklistUpdateRequest(
      added: data.dec(_f$added),
      removed: data.dec(_f$removed),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BlacklistUpdateRequest fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BlacklistUpdateRequest>(map);
  }

  static BlacklistUpdateRequest fromJson(String json) {
    return ensureInitialized().decodeJson<BlacklistUpdateRequest>(json);
  }
}

mixin BlacklistUpdateRequestMappable {
  String toJson() {
    return BlacklistUpdateRequestMapper.ensureInitialized()
        .encodeJson<BlacklistUpdateRequest>(this as BlacklistUpdateRequest);
  }

  Map<String, dynamic> toMap() {
    return BlacklistUpdateRequestMapper.ensureInitialized()
        .encodeMap<BlacklistUpdateRequest>(this as BlacklistUpdateRequest);
  }

  BlacklistUpdateRequestCopyWith<
    BlacklistUpdateRequest,
    BlacklistUpdateRequest,
    BlacklistUpdateRequest
  >
  get copyWith =>
      _BlacklistUpdateRequestCopyWithImpl<
        BlacklistUpdateRequest,
        BlacklistUpdateRequest
      >(this as BlacklistUpdateRequest, $identity, $identity);
  @override
  String toString() {
    return BlacklistUpdateRequestMapper.ensureInitialized().stringifyValue(
      this as BlacklistUpdateRequest,
    );
  }
}

extension BlacklistUpdateRequestValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BlacklistUpdateRequest, $Out> {
  BlacklistUpdateRequestCopyWith<$R, BlacklistUpdateRequest, $Out>
  get $asBlacklistUpdateRequest => $base.as(
    (v, t, t2) => _BlacklistUpdateRequestCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class BlacklistUpdateRequestCopyWith<
  $R,
  $In extends BlacklistUpdateRequest,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get added;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get removed;
  $R call({List<int>? added, List<int>? removed});
  BlacklistUpdateRequestCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BlacklistUpdateRequestCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BlacklistUpdateRequest, $Out>
    implements
        BlacklistUpdateRequestCopyWith<$R, BlacklistUpdateRequest, $Out> {
  _BlacklistUpdateRequestCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BlacklistUpdateRequest> $mapper =
      BlacklistUpdateRequestMapper.ensureInitialized();
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get added => ListCopyWith(
    $value.added,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(added: v),
  );
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get removed =>
      ListCopyWith(
        $value.removed,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(removed: v),
      );
  @override
  $R call({List<int>? added, List<int>? removed}) => $apply(
    FieldCopyWithData({
      if (added != null) #added: added,
      if (removed != null) #removed: removed,
    }),
  );
  @override
  BlacklistUpdateRequest $make(CopyWithData data) => BlacklistUpdateRequest(
    added: data.get(#added, or: $value.added),
    removed: data.get(#removed, or: $value.removed),
  );

  @override
  BlacklistUpdateRequestCopyWith<$R2, BlacklistUpdateRequest, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BlacklistUpdateRequestCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

