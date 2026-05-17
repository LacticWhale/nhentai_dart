import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';
import '../comment.dart';
import '../hooks/book_cover_hook.dart';
import '../hooks/book_pages_hook.dart';
import '../hooks/date_hook.dart';
import '../image.dart';
import '../tags/tag.dart';
import 'book_preview.dart';
import 'book_title.dart';

part 'book.mapper.dart';


/// Detailed book.
@immutable
@MappableClass(
  hook: ChainedHook([
    BookCoverHook(),
    BookPagesHook(),
  ])
)
class const Book({
    required this.title,
    required this.id,
    required this.media,
    required this.favorites,
    required this.uploaded,
    required this.tags,
    required this.cover,
    required this.count,
    required this.pages,
    this.scanlator,
    this.comments,
    this.related,
    this.favorited,
  }) with BookMappable {
  /// Book.
  this;

  /// Parses [Book] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [Book] object.
  /// * [Book] - then value will be returned as-is.
  static Book Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<Book>;

  /// Parses [List] of [Book] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [Book] - then value will be returned as-is.
  static List<Book> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<Book>>;

  /// Parses JSON string into [Book] similarly to [parse].
  static Book Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<Book>;

  /// Parses JSON string into [List] of [Book] instances similarly to
  /// [parseList].
  static List<Book> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<Book>>;


  /// Book title.
  @MappableField(key: 'title')
  final BookTitle title;

  /// Book ID.
  @MappableField(key: 'id')
  final int id;

  /// Book media gallery ID.
  @MappableField(key: 'media_id')
  final int media;

  /// Book favorites count.
  @MappableField(key: 'num_favorites')
  final int favorites;

  /// Book scanlator.
  @MappableField(key: 'scanlator')
  final String? scanlator;

  /// Book upload date.
  @MappableField(key: 'upload_date', hook: DateHook())
  final DateTime uploaded;

  /// Book tags list.
  @MappableField(key: 'tags')
  final List<Tag> tags;

  /// Book cover.
  @MappableField(key: 'cover')
  final Image cover;

  /// Total number of pages.
  @MappableField(key: 'num_pages')
  final int count;

  /// Full list of page information (only if requested with `include=pages`).
  @MappableField(key: 'pages')
  final List<Image> pages;

  /// Comments (only if requested with `include=comments`).
  @MappableField(key: 'comments')
  final List<Comment>? comments;

  /// Related galleries (only if requested with `include=related`).
  @MappableField(key: 'related')
  final List<BookPreview>? related;

  /// Whether the current user has favorited this gallery (null if not authenticated or not requested).
  @MappableField(key: 'is_favorited')
  final bool? favorited;
}
