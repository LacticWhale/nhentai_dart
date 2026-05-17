// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'captcha_info.dart';

class CaptchaInfoMapper extends ClassMapperBase<CaptchaInfo> {
  CaptchaInfoMapper._();

  static CaptchaInfoMapper? _instance;
  static CaptchaInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CaptchaInfoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CaptchaInfo';

  static String _$provider(CaptchaInfo v) => v.provider;
  static const Field<CaptchaInfo, String> _f$provider = Field(
    'provider',
    _$provider,
  );
  static String _$siteKey(CaptchaInfo v) => v.siteKey;
  static const Field<CaptchaInfo, String> _f$siteKey = Field(
    'siteKey',
    _$siteKey,
    key: r'site_key',
  );

  @override
  final MappableFields<CaptchaInfo> fields = const {
    #provider: _f$provider,
    #siteKey: _f$siteKey,
  };

  static CaptchaInfo _instantiate(DecodingData data) {
    return CaptchaInfo(
      provider: data.dec(_f$provider),
      siteKey: data.dec(_f$siteKey),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CaptchaInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CaptchaInfo>(map);
  }

  static CaptchaInfo fromJson(String json) {
    return ensureInitialized().decodeJson<CaptchaInfo>(json);
  }
}

mixin CaptchaInfoMappable {
  String toJson() {
    return CaptchaInfoMapper.ensureInitialized().encodeJson<CaptchaInfo>(
      this as CaptchaInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return CaptchaInfoMapper.ensureInitialized().encodeMap<CaptchaInfo>(
      this as CaptchaInfo,
    );
  }

  CaptchaInfoCopyWith<CaptchaInfo, CaptchaInfo, CaptchaInfo> get copyWith =>
      _CaptchaInfoCopyWithImpl<CaptchaInfo, CaptchaInfo>(
        this as CaptchaInfo,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CaptchaInfoMapper.ensureInitialized().stringifyValue(
      this as CaptchaInfo,
    );
  }
}

extension CaptchaInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CaptchaInfo, $Out> {
  CaptchaInfoCopyWith<$R, CaptchaInfo, $Out> get $asCaptchaInfo =>
      $base.as((v, t, t2) => _CaptchaInfoCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CaptchaInfoCopyWith<$R, $In extends CaptchaInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? provider, String? siteKey});
  CaptchaInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CaptchaInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CaptchaInfo, $Out>
    implements CaptchaInfoCopyWith<$R, CaptchaInfo, $Out> {
  _CaptchaInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CaptchaInfo> $mapper =
      CaptchaInfoMapper.ensureInitialized();
  @override
  $R call({String? provider, String? siteKey}) => $apply(
    FieldCopyWithData({
      if (provider != null) #provider: provider,
      if (siteKey != null) #siteKey: siteKey,
    }),
  );
  @override
  CaptchaInfo $make(CopyWithData data) => CaptchaInfo(
    provider: data.get(#provider, or: $value.provider),
    siteKey: data.get(#siteKey, or: $value.siteKey),
  );

  @override
  CaptchaInfoCopyWith<$R2, CaptchaInfo, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CaptchaInfoCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

