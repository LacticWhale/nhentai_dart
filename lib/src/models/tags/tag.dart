import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';
import '../../repositories/repositories.dart';
import 'tag_type.dart';

part 'tag.mapper.dart';

/// Tag.
@immutable
@MappableClass()
class Tag with TagMappable {
  /// Tag.
  const Tag({
    required this.id,
    required this.type,
    required this.name,
    required this.slug,
    required this.url,
    required this.count,
    this.description,
    this.isCommunity,
  });

  /// Creates a tag from ID.
  ///
  /// Such tag can be used for query based search ([BookRepository.getByTag] and
  /// [SearchRepository.searchQuery]).
  const Tag.id(this.id, {
    this.name = '',
    this.type = TagType.unknown,
    this.count = 0,
    this.description,
    this.isCommunity,
    this.slug = '',
    this.url = '',
  });

  /// Creates a tag from ID.
  ///
  /// Such tag can be used for query based search ([BookRepository.getByTag] and
  /// [SearchRepository.searchQuery]).
  const Tag.named({
    required this.type,
    required this.name,
    this.id = 0,
    this.count = 0,
    this.description,
    this.isCommunity,
    this.slug = '',
    this.url = '',
  });

  /// Parses [Tag] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [Tag] object.
  /// * [Tag] - then value will be returned as-is.
  static Tag Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<Tag>;

  /// Parses [List] of [Tag] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [Tag] - then value will be returned as-is.
  static List<Tag> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<Tag>>;

  /// Parses JSON string into [Tag] similarly to [parse].
  static Tag Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<Tag>;

  /// Parses JSON string into [List] of [Tag] instances similarly to
  /// [parseList].
  static List<Tag> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<Tag>>;

  /// Unique identifier of the tag.
  @MappableField(key: 'id')
  final int id;

  /// Tag type (e.g. "artist", "parody", "character", "tag", etc.).
  @MappableField(key: 'type')
  final TagType type;

  /// Display name of the tag.
  @MappableField(key: 'name')
  final String name;

  /// URL slug for the tag.
  @MappableField(key: 'slug')
  final String slug;

  /// Absolute URL to the tag page.
  @MappableField(key: 'url')
  final String url;

  /// Number of galleries using this tag.
  @MappableField(key: 'count')
  final int count;

  /// Optional description (community‑defined for some tags).
  @MappableField(key: 'description')
  final String? description;

  /// Whether the tag was created by the community (true) or official (false/null).
  @MappableField(key: 'is_community')
  final bool? isCommunity;
}
