import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'solved_proof_of_work.mapper.dart';


/// Solved proof of work challenge.
@immutable
@MappableClass()
class const  SolvedProofOfWork({
    required this.challenge,
    required this.nonce,
  }) {
  /// Solved proof of work.
  this;

  /// Parses [SolvedProofOfWork] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [SolvedProofOfWork] object.
  /// * [SolvedProofOfWork] - then value will be returned as-is.
  static SolvedProofOfWork Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<SolvedProofOfWork>;

  /// Parses [List] of [SolvedProofOfWork] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [SolvedProofOfWork] - then value will be returned as-is.
  static List<SolvedProofOfWork> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<SolvedProofOfWork>>;

  /// Parses JSON string into [SolvedProofOfWork] similarly to [parse].
  static SolvedProofOfWork Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<SolvedProofOfWork>;

  /// Parses JSON string into [List] of [SolvedProofOfWork] instances similarly to
  /// [parseList].
  static List<SolvedProofOfWork> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<SolvedProofOfWork>>;

  /// Original challenge.
  @MappableField(key: 'challenge')
  final String challenge;

  /// Solution.
  @MappableField(key: 'nonce')
  final int nonce;
}
