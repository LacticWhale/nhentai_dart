// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'proof_of_work.dart';

class ProofOfWorkMapper extends ClassMapperBase<ProofOfWork> {
  ProofOfWorkMapper._();

  static ProofOfWorkMapper? _instance;
  static ProofOfWorkMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProofOfWorkMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProofOfWork';

  static String _$challenge(ProofOfWork v) => v.challenge;
  static const Field<ProofOfWork, String> _f$challenge = Field(
    'challenge',
    _$challenge,
  );
  static int _$difficulty(ProofOfWork v) => v.difficulty;
  static const Field<ProofOfWork, int> _f$difficulty = Field(
    'difficulty',
    _$difficulty,
  );

  @override
  final MappableFields<ProofOfWork> fields = const {
    #challenge: _f$challenge,
    #difficulty: _f$difficulty,
  };

  static ProofOfWork _instantiate(DecodingData data) {
    return ProofOfWork(
      challenge: data.dec(_f$challenge),
      difficulty: data.dec(_f$difficulty),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ProofOfWork fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProofOfWork>(map);
  }

  static ProofOfWork fromJson(String json) {
    return ensureInitialized().decodeJson<ProofOfWork>(json);
  }
}

mixin ProofOfWorkMappable {
  String toJson() {
    return ProofOfWorkMapper.ensureInitialized().encodeJson<ProofOfWork>(
      this as ProofOfWork,
    );
  }

  Map<String, dynamic> toMap() {
    return ProofOfWorkMapper.ensureInitialized().encodeMap<ProofOfWork>(
      this as ProofOfWork,
    );
  }

  ProofOfWorkCopyWith<ProofOfWork, ProofOfWork, ProofOfWork> get copyWith =>
      _ProofOfWorkCopyWithImpl<ProofOfWork, ProofOfWork>(
        this as ProofOfWork,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProofOfWorkMapper.ensureInitialized().stringifyValue(
      this as ProofOfWork,
    );
  }
}

extension ProofOfWorkValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProofOfWork, $Out> {
  ProofOfWorkCopyWith<$R, ProofOfWork, $Out> get $asProofOfWork =>
      $base.as((v, t, t2) => _ProofOfWorkCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProofOfWorkCopyWith<$R, $In extends ProofOfWork, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? challenge, int? difficulty});
  ProofOfWorkCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProofOfWorkCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProofOfWork, $Out>
    implements ProofOfWorkCopyWith<$R, ProofOfWork, $Out> {
  _ProofOfWorkCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProofOfWork> $mapper =
      ProofOfWorkMapper.ensureInitialized();
  @override
  $R call({String? challenge, int? difficulty}) => $apply(
    FieldCopyWithData({
      if (challenge != null) #challenge: challenge,
      if (difficulty != null) #difficulty: difficulty,
    }),
  );
  @override
  ProofOfWork $make(CopyWithData data) => ProofOfWork(
    challenge: data.get(#challenge, or: $value.challenge),
    difficulty: data.get(#difficulty, or: $value.difficulty),
  );

  @override
  ProofOfWorkCopyWith<$R2, ProofOfWork, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ProofOfWorkCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

