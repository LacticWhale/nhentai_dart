import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';
import '../hooks/book_preview_thumbnail_hook.dart';
import '../hooks/book_preview_title_hook.dart';
import '../image.dart';
import 'book_title.dart';

part 'book_preview.mapper.dart';


/// Stripped down book object used in lists for preview.
@immutable
@MappableClass(
  hook: ChainedHook([
    BookPreviewThumbnailHook(),
    BookPreviewTitleHook(),
  ]),
)
class const BookPreview({
    required this.id,
    required this.media,
    required this.title,
    required this.thumbnail,
    required this.count,
    required this.tagIds,
    required this.blacklisted,
  }) with BookPreviewMappable {
  /// Book preview.
  this;

  /// Parses [BookPreview] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [BookPreview] object.
  /// * [BookPreview] - then value will be returned as-is.
  static BookPreview Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<BookPreview>;

  /// Parses [List] of [BookPreview] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [BookPreview] - then value will be returned as-is.
  static List<BookPreview> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<BookPreview>>;

  /// Parses JSON string into [BookPreview] similarly to [parse].
  static BookPreview Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<BookPreview>;

  /// Parses JSON string into [List] of [BookPreview] instances similarly to
  /// [parseList].
  static List<BookPreview> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<BookPreview>>;

  /// Book ID.
  @MappableField(key: 'id')
  final int id;

  /// Book media gallery ID.
  @MappableField(key: 'media_id')
  final int media;

  /// English title.
  @MappableField(key: 'title')
  final BookTitle title;

  /// Cover thumbnail.
  @MappableField(key: 'thumbnail')
  final ImageThumbnail thumbnail;

  /// Number of pages in the book.
  @MappableField(key: 'num_pages')
  final int count;

  /// List of tag IDs associated with the book.
  @MappableField(key: 'tag_ids')
  final List<int> tagIds;

  /// Whether this book is blacklisted for the authenticated user.
  @MappableField(key: 'blacklisted')
  final bool blacklisted;
}
