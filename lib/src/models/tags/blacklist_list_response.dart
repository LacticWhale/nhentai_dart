import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';
import '../../mapper_container_extension.dart';
import 'tag.dart';

part 'blacklist_list_response.mapper.dart';


/// Response with authenticated user blacklisted tags.
@immutable
@MappableClass()
class const BlacklistListResponse({
    required this.tags,
    required this.count,
  }) with BlacklistListResponseMappable {
  /// Blacklist list response.
  this;

  /// Parses [BlacklistListResponse] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [BlacklistListResponse] object.
  /// * [BlacklistListResponse] - then value will be returned as-is.
  static BlacklistListResponse Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<BlacklistListResponse>;

  /// Parses [List] of [BlacklistListResponse] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [BlacklistListResponse] - then value will be returned as-is.
  static List<BlacklistListResponse> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<BlacklistListResponse>>;

  /// Parses JSON string into [BlacklistListResponse] similarly to [parse].
  static BlacklistListResponse Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<BlacklistListResponse>;

  /// Parses JSON string into [List] of [BlacklistListResponse] instances similarly to
  /// [parseList].
  static List<BlacklistListResponse> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<BlacklistListResponse>>;

  /// List of blacklisted tags.
  @MappableField(key: 'tags')
  final List<Tag> tags;

  /// Total number of blacklisted tags.
  @MappableField(key: 'count')
  final int count;
}
