// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'api_info.dart';

class ApiInfoMapper extends ClassMapperBase<ApiInfo> {
  ApiInfoMapper._();

  static ApiInfoMapper? _instance;
  static ApiInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ApiInfo';

  static String _$version(ApiInfo v) => v.version;
  static const Field<ApiInfo, String> _f$version = Field('version', _$version);
  static String _$message(ApiInfo v) => v.message;
  static const Field<ApiInfo, String> _f$message = Field('message', _$message);

  @override
  final MappableFields<ApiInfo> fields = const {
    #version: _f$version,
    #message: _f$message,
  };

  static ApiInfo _instantiate(DecodingData data) {
    return ApiInfo(
      version: data.dec(_f$version),
      message: data.dec(_f$message),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ApiInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiInfo>(map);
  }

  static ApiInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ApiInfo>(json);
  }
}

mixin ApiInfoMappable {
  String toJson() {
    return ApiInfoMapper.ensureInitialized().encodeJson<ApiInfo>(
      this as ApiInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return ApiInfoMapper.ensureInitialized().encodeMap<ApiInfo>(
      this as ApiInfo,
    );
  }

  ApiInfoCopyWith<ApiInfo, ApiInfo, ApiInfo> get copyWith =>
      _ApiInfoCopyWithImpl<ApiInfo, ApiInfo>(
        this as ApiInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ApiInfoMapper.ensureInitialized().stringifyValue(this as ApiInfo);
  }
}

extension ApiInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, ApiInfo, $Out> {
  ApiInfoCopyWith<$R, ApiInfo, $Out> get $asApiInfo =>
      $base.as((v, t, t2) => _ApiInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApiInfoCopyWith<$R, $In extends ApiInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? version, String? message});
  ApiInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ApiInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiInfo, $Out>
    implements ApiInfoCopyWith<$R, ApiInfo, $Out> {
  _ApiInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiInfo> $mapper =
      ApiInfoMapper.ensureInitialized();
  @override
  $R call({String? version, String? message}) => $apply(
    FieldCopyWithData({
      if (version != null) #version: version,
      if (message != null) #message: message,
    }),
  );
  @override
  ApiInfo $make(CopyWithData data) => ApiInfo(
    version: data.get(#version, or: $value.version),
    message: data.get(#message, or: $value.message),
  );

  @override
  ApiInfoCopyWith<$R2, ApiInfo, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ApiInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

