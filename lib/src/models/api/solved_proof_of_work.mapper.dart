// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'solved_proof_of_work.dart';

class SolvedProofOfWorkMapper extends ClassMapperBase<SolvedProofOfWork> {
  SolvedProofOfWorkMapper._();

  static SolvedProofOfWorkMapper? _instance;
  static SolvedProofOfWorkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SolvedProofOfWorkMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SolvedProofOfWork';

  static String _$challenge(SolvedProofOfWork v) => v.challenge;
  static const Field<SolvedProofOfWork, String> _f$challenge = Field(
    'challenge',
    _$challenge,
  );
  static int _$nonce(SolvedProofOfWork v) => v.nonce;
  static const Field<SolvedProofOfWork, int> _f$nonce = Field('nonce', _$nonce);

  @override
  final MappableFields<SolvedProofOfWork> fields = const {
    #challenge: _f$challenge,
    #nonce: _f$nonce,
  };

  static SolvedProofOfWork _instantiate(DecodingData data) {
    return SolvedProofOfWork(
      challenge: data.dec(_f$challenge),
      nonce: data.dec(_f$nonce),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static SolvedProofOfWork fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SolvedProofOfWork>(map);
  }

  static SolvedProofOfWork fromJson(String json) {
    return ensureInitialized().decodeJson<SolvedProofOfWork>(json);
  }
}

mixin SolvedProofOfWorkMappable {
  String toJson() {
    return SolvedProofOfWorkMapper.ensureInitialized()
        .encodeJson<SolvedProofOfWork>(this as SolvedProofOfWork);
  }

  Map<String, dynamic> toMap() {
    return SolvedProofOfWorkMapper.ensureInitialized()
        .encodeMap<SolvedProofOfWork>(this as SolvedProofOfWork);
  }

  SolvedProofOfWorkCopyWith<
    SolvedProofOfWork,
    SolvedProofOfWork,
    SolvedProofOfWork
  >
  get copyWith =>
      _SolvedProofOfWorkCopyWithImpl<SolvedProofOfWork, SolvedProofOfWork>(
        this as SolvedProofOfWork,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SolvedProofOfWorkMapper.ensureInitialized().stringifyValue(
      this as SolvedProofOfWork,
    );
  }
}

extension SolvedProofOfWorkValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SolvedProofOfWork, $Out> {
  SolvedProofOfWorkCopyWith<$R, SolvedProofOfWork, $Out>
  get $asSolvedProofOfWork => $base.as(
    (v, t, t2) => _SolvedProofOfWorkCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class SolvedProofOfWorkCopyWith<
  $R,
  $In extends SolvedProofOfWork,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? challenge, int? nonce});
  SolvedProofOfWorkCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _SolvedProofOfWorkCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SolvedProofOfWork, $Out>
    implements SolvedProofOfWorkCopyWith<$R, SolvedProofOfWork, $Out> {
  _SolvedProofOfWorkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SolvedProofOfWork> $mapper =
      SolvedProofOfWorkMapper.ensureInitialized();
  @override
  $R call({String? challenge, int? nonce}) => $apply(
    FieldCopyWithData({
      if (challenge != null) #challenge: challenge,
      if (nonce != null) #nonce: nonce,
    }),
  );
  @override
  SolvedProofOfWork $make(CopyWithData data) => SolvedProofOfWork(
    challenge: data.get(#challenge, or: $value.challenge),
    nonce: data.get(#nonce, or: $value.nonce),
  );

  @override
  SolvedProofOfWorkCopyWith<$R2, SolvedProofOfWork, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SolvedProofOfWorkCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

