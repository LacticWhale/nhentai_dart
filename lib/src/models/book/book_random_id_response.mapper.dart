// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_random_id_response.dart';

class BookRandomIdResponseMapper extends ClassMapperBase<BookRandomIdResponse> {
  BookRandomIdResponseMapper._();

  static BookRandomIdResponseMapper? _instance;
  static BookRandomIdResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookRandomIdResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BookRandomIdResponse';

  static int _$id(BookRandomIdResponse v) => v.id;
  static const Field<BookRandomIdResponse, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<BookRandomIdResponse> fields = const {#id: _f$id};

  static BookRandomIdResponse _instantiate(DecodingData data) {
    return BookRandomIdResponse(data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static BookRandomIdResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookRandomIdResponse>(map);
  }

  static BookRandomIdResponse fromJson(String json) {
    return ensureInitialized().decodeJson<BookRandomIdResponse>(json);
  }
}

mixin BookRandomIdResponseMappable {
  String toJson() {
    return BookRandomIdResponseMapper.ensureInitialized()
        .encodeJson<BookRandomIdResponse>(this as BookRandomIdResponse);
  }

  Map<String, dynamic> toMap() {
    return BookRandomIdResponseMapper.ensureInitialized()
        .encodeMap<BookRandomIdResponse>(this as BookRandomIdResponse);
  }

  BookRandomIdResponseCopyWith<
    BookRandomIdResponse,
    BookRandomIdResponse,
    BookRandomIdResponse
  >
  get copyWith =>
      _BookRandomIdResponseCopyWithImpl<
        BookRandomIdResponse,
        BookRandomIdResponse
      >(this as BookRandomIdResponse, $identity, $identity);
  @override
  String toString() {
    return BookRandomIdResponseMapper.ensureInitialized().stringifyValue(
      this as BookRandomIdResponse,
    );
  }
}

extension BookRandomIdResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookRandomIdResponse, $Out> {
  BookRandomIdResponseCopyWith<$R, BookRandomIdResponse, $Out>
  get $asBookRandomIdResponse => $base.as(
    (v, t, t2) => _BookRandomIdResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class BookRandomIdResponseCopyWith<
  $R,
  $In extends BookRandomIdResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id});
  BookRandomIdResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _BookRandomIdResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookRandomIdResponse, $Out>
    implements BookRandomIdResponseCopyWith<$R, BookRandomIdResponse, $Out> {
  _BookRandomIdResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookRandomIdResponse> $mapper =
      BookRandomIdResponseMapper.ensureInitialized();
  @override
  $R call({int? id}) => $apply(FieldCopyWithData({if (id != null) #id: id}));
  @override
  BookRandomIdResponse $make(CopyWithData data) =>
      BookRandomIdResponse(data.get(#id, or: $value.id));

  @override
  BookRandomIdResponseCopyWith<$R2, BookRandomIdResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BookRandomIdResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

