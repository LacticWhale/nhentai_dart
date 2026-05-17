import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'blacklist_update_request.mapper.dart';


/// Response with authenticated user blacklist operation result.
@immutable
@MappableClass()
class BlacklistUpdateRequest({
    this.added = const [],
    this.removed = const [],
  }) with BlacklistUpdateRequestMappable {
  /// Blacklist update request.
  this;

  /// Parses [BlacklistUpdateRequest] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [BlacklistUpdateRequest] object.
  /// * [BlacklistUpdateRequest] - then value will be returned as-is.
  static BlacklistUpdateRequest Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<BlacklistUpdateRequest>;

  /// Parses [List] of [BlacklistUpdateRequest] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [BlacklistUpdateRequest] - then value will be returned as-is.
  static List<BlacklistUpdateRequest> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<BlacklistUpdateRequest>>;

  /// Parses JSON string into [BlacklistUpdateRequest] similarly to [parse].
  static BlacklistUpdateRequest Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<BlacklistUpdateRequest>;

  /// Parses JSON string into [List] of [BlacklistUpdateRequest] instances similarly to
  /// [parseList].
  static List<BlacklistUpdateRequest> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<BlacklistUpdateRequest>>;

  /// Tag IDs to add to the blacklist.
  @MappableField(key: 'added')
  final List<int> added;

  /// Tag IDs to remove from the blacklist.
  @MappableField(key: 'removed')
  final List<int> removed;
}
