// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated.dart';

class PaginatedMapper extends ClassMapperBase<Paginated> {
  PaginatedMapper._();

  static PaginatedMapper? _instance;
  static PaginatedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PaginatedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Paginated';
  @override
  Function get typeFactory =>
      <T>(f) => f<Paginated<T>>();

  static List<dynamic> _$result(Paginated v) => v.result;
  static dynamic _arg$result<T>(f) => f<List<T>>();
  static const Field<Paginated, List<dynamic>> _f$result = Field(
    'result',
    _$result,
    arg: _arg$result,
  );
  static int _$count(Paginated v) => v.count;
  static const Field<Paginated, int> _f$count = Field(
    'count',
    _$count,
    key: r'num_pages',
  );
  static int _$limit(Paginated v) => v.limit;
  static const Field<Paginated, int> _f$limit = Field(
    'limit',
    _$limit,
    key: r'per_page',
    opt: true,
    def: 25,
  );
  static int? _$total(Paginated v) => v.total;
  static const Field<Paginated, int> _f$total = Field(
    'total',
    _$total,
    opt: true,
  );

  @override
  final MappableFields<Paginated> fields = const {
    #result: _f$result,
    #count: _f$count,
    #limit: _f$limit,
    #total: _f$total,
  };

  static Paginated<T> _instantiate<T>(DecodingData data) {
    return Paginated(
      result: data.dec(_f$result),
      count: data.dec(_f$count),
      limit: data.dec(_f$limit),
      total: data.dec(_f$total),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Paginated<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Paginated<T>>(map);
  }

  static Paginated<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<Paginated<T>>(json);
  }
}

mixin PaginatedMappable<T> {
  String toJson() {
    return PaginatedMapper.ensureInitialized().encodeJson<Paginated<T>>(
      this as Paginated<T>,
    );
  }

  Map<String, dynamic> toMap() {
    return PaginatedMapper.ensureInitialized().encodeMap<Paginated<T>>(
      this as Paginated<T>,
    );
  }

  PaginatedCopyWith<Paginated<T>, Paginated<T>, Paginated<T>, T> get copyWith =>
      _PaginatedCopyWithImpl<Paginated<T>, Paginated<T>, T>(
        this as Paginated<T>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PaginatedMapper.ensureInitialized().stringifyValue(
      this as Paginated<T>,
    );
  }
}

extension PaginatedValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, Paginated<T>, $Out> {
  PaginatedCopyWith<$R, Paginated<T>, $Out, T> get $asPaginated =>
      $base.as((v, t, t2) => _PaginatedCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class PaginatedCopyWith<$R, $In extends Paginated<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>?> get result;
  $R call({List<T>? result, int? count, int? limit, int? total});
  PaginatedCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PaginatedCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, Paginated<T>, $Out>
    implements PaginatedCopyWith<$R, Paginated<T>, $Out, T> {
  _PaginatedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Paginated> $mapper =
      PaginatedMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>?> get result => ListCopyWith(
    $value.result,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(result: v),
  );
  @override
  $R call({List<T>? result, int? count, int? limit, Object? total = $none}) =>
      $apply(
        FieldCopyWithData({
          if (result != null) #result: result,
          if (count != null) #count: count,
          if (limit != null) #limit: limit,
          if (total != $none) #total: total,
        }),
      );
  @override
  Paginated<T> $make(CopyWithData data) => Paginated(
    result: data.get(#result, or: $value.result),
    count: data.get(#count, or: $value.count),
    limit: data.get(#limit, or: $value.limit),
    total: data.get(#total, or: $value.total),
  );

  @override
  PaginatedCopyWith<$R2, Paginated<T>, $Out2, T> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PaginatedCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

