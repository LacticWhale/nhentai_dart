// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'download_info.dart';

class DownloadInfoMapper extends ClassMapperBase<DownloadInfo> {
  DownloadInfoMapper._();

  static DownloadInfoMapper? _instance;
  static DownloadInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DownloadInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DownloadInfo';

  static String _$url(DownloadInfo v) => v.url;
  static const Field<DownloadInfo, String> _f$url = Field('url', _$url);
  static DateTime _$expires(DownloadInfo v) => v.expires;
  static const Field<DownloadInfo, DateTime> _f$expires = Field(
    'expires',
    _$expires,
    hook: DateHook(),
  );

  @override
  final MappableFields<DownloadInfo> fields = const {
    #url: _f$url,
    #expires: _f$expires,
  };

  static DownloadInfo _instantiate(DecodingData data) {
    return DownloadInfo(url: data.dec(_f$url), expires: data.dec(_f$expires));
  }

  @override
  final Function instantiate = _instantiate;

  static DownloadInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DownloadInfo>(map);
  }

  static DownloadInfo fromJson(String json) {
    return ensureInitialized().decodeJson<DownloadInfo>(json);
  }
}

mixin DownloadInfoMappable {
  String toJson() {
    return DownloadInfoMapper.ensureInitialized().encodeJson<DownloadInfo>(
      this as DownloadInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return DownloadInfoMapper.ensureInitialized().encodeMap<DownloadInfo>(
      this as DownloadInfo,
    );
  }

  DownloadInfoCopyWith<DownloadInfo, DownloadInfo, DownloadInfo> get copyWith =>
      _DownloadInfoCopyWithImpl<DownloadInfo, DownloadInfo>(
        this as DownloadInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DownloadInfoMapper.ensureInitialized().stringifyValue(
      this as DownloadInfo,
    );
  }
}

extension DownloadInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DownloadInfo, $Out> {
  DownloadInfoCopyWith<$R, DownloadInfo, $Out> get $asDownloadInfo =>
      $base.as((v, t, t2) => _DownloadInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DownloadInfoCopyWith<$R, $In extends DownloadInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, DateTime? expires});
  DownloadInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DownloadInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DownloadInfo, $Out>
    implements DownloadInfoCopyWith<$R, DownloadInfo, $Out> {
  _DownloadInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DownloadInfo> $mapper =
      DownloadInfoMapper.ensureInitialized();
  @override
  $R call({String? url, DateTime? expires}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (expires != null) #expires: expires,
    }),
  );
  @override
  DownloadInfo $make(CopyWithData data) => DownloadInfo(
    url: data.get(#url, or: $value.url),
    expires: data.get(#expires, or: $value.expires),
  );

  @override
  DownloadInfoCopyWith<$R2, DownloadInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DownloadInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

