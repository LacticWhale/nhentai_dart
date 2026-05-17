import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'proof_of_work.mapper.dart';


/// Proof of work.
@immutable
@MappableClass()
class const ProofOfWork({
  required this.challenge,
  required this.difficulty,
}) with ProofOfWorkMappable {
  /// To solve proof of work, you need to find a integer that produces sha256
  /// hash of with [difficulty] number of 0 bits.
  ///
  /// Example of hash calculation:
  /// ```dart
  /// hash = sha256.convert(utf8.encode('$challenge$nonce'));
  /// ```
  this;

  /// Parses [ProofOfWork] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [ProofOfWork] object.
  /// * [ProofOfWork] - then value will be returned as-is.
  static ProofOfWork Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<ProofOfWork>;

  /// Parses [List] of [ProofOfWork] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [ProofOfWork] - then value will be returned as-is.
  static List<ProofOfWork> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<ProofOfWork>>;

  /// Parses JSON string into [ProofOfWork] similarly to [parse].
  static ProofOfWork Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<ProofOfWork>;

  /// Parses JSON string into [List] of [ProofOfWork] instances similarly to
  /// [parseList].
  static List<ProofOfWork> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<ProofOfWork>>;

  /// Hash.
  @MappableField(key: 'challenge')
  final String challenge;

  /// Count for target zeros.
  @MappableField(key: 'difficulty')
  final int difficulty;
}
