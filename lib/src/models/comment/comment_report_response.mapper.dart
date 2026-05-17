// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'comment_report_response.dart';

class CommentReportResponseMapper
    extends ClassMapperBase<CommentReportResponse> {
  CommentReportResponseMapper._();

  static CommentReportResponseMapper? _instance;
  static CommentReportResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CommentReportResponseMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CommentReportResponse';

  static bool _$success(CommentReportResponse v) => v.success;
  static const Field<CommentReportResponse, bool> _f$success = Field(
    'success',
    _$success,
  );
  static String _$message(CommentReportResponse v) => v.message;
  static const Field<CommentReportResponse, String> _f$message = Field(
    'message',
    _$message,
  );

  @override
  final MappableFields<CommentReportResponse> fields = const {
    #success: _f$success,
    #message: _f$message,
  };

  static CommentReportResponse _instantiate(DecodingData data) {
    return CommentReportResponse(
      success: data.dec(_f$success),
      message: data.dec(_f$message),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CommentReportResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CommentReportResponse>(map);
  }

  static CommentReportResponse fromJson(String json) {
    return ensureInitialized().decodeJson<CommentReportResponse>(json);
  }
}

mixin CommentReportResponseMappable {
  String toJson() {
    return CommentReportResponseMapper.ensureInitialized()
        .encodeJson<CommentReportResponse>(this as CommentReportResponse);
  }

  Map<String, dynamic> toMap() {
    return CommentReportResponseMapper.ensureInitialized()
        .encodeMap<CommentReportResponse>(this as CommentReportResponse);
  }

  CommentReportResponseCopyWith<
    CommentReportResponse,
    CommentReportResponse,
    CommentReportResponse
  >
  get copyWith =>
      _CommentReportResponseCopyWithImpl<
        CommentReportResponse,
        CommentReportResponse
      >(this as CommentReportResponse, $identity, $identity);
  @override
  String toString() {
    return CommentReportResponseMapper.ensureInitialized().stringifyValue(
      this as CommentReportResponse,
    );
  }
}

extension CommentReportResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CommentReportResponse, $Out> {
  CommentReportResponseCopyWith<$R, CommentReportResponse, $Out>
  get $asCommentReportResponse => $base.as(
    (v, t, t2) => _CommentReportResponseCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CommentReportResponseCopyWith<
  $R,
  $In extends CommentReportResponse,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? success, String? message});
  CommentReportResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CommentReportResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CommentReportResponse, $Out>
    implements CommentReportResponseCopyWith<$R, CommentReportResponse, $Out> {
  _CommentReportResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CommentReportResponse> $mapper =
      CommentReportResponseMapper.ensureInitialized();
  @override
  $R call({bool? success, String? message}) => $apply(
    FieldCopyWithData({
      if (success != null) #success: success,
      if (message != null) #message: message,
    }),
  );
  @override
  CommentReportResponse $make(CopyWithData data) => CommentReportResponse(
    success: data.get(#success, or: $value.success),
    message: data.get(#message, or: $value.message),
  );

  @override
  CommentReportResponseCopyWith<$R2, CommentReportResponse, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CommentReportResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

