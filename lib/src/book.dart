import 'package:meta/meta.dart';

import 'book_title.dart';
import 'image.dart';
import 'parsers.dart' as parsers;
import 'tags_list.dart';


/// Book.
@immutable
class Book {
  /// Creates a book.
  // ignore: prefer_const_constructors_in_immutables
  Book._internal({
    required this.title,
    required this.id,
    required this.media,
    required this.favorites,
    required this.scanlator,
    required this.uploaded,
    required this.tags,
  });

  /// Book title.
  final BookTitle title;
  /// Book ID.
  final int id;
  /// Book media gallery ID.
  final int media;
  /// Book favorites count.
  final int favorites;
  /// Book scanlator.
  final String? scanlator;
  /// Book upload date.
  final DateTime uploaded;
  /// Book cover.
  late final Image cover;
  /// Book thumbnail.
  late final Image thumbnail;
  /// Book pages.
  late final Iterable<Image> pages;
  /// Book tags list.
  final TagsList tags;

  /// Get book pretty title.
  @override
  String toString() => title.toString();


  /// Parses book from API [json] object.
  ///
  /// Returns `null` if [json] can't be parsed to [Book].
  static Book? tryParse(dynamic json) {
    if (json == null)
      return null;
    try {
      return Book.parse(json);
    } on FormatException { // Ignore bad JSON.
      return null;
    }
  }

  /// Parses book from API [json] object.
  /// 
  /// Throws a [FormatException] if [json] can't be parsed to [Book].
  // ignore: sort_constructors_first
  factory Book.parse(dynamic json) {
    final images = parsers.parseMap<String, dynamic>(json?['images']);
    final scanlator = parsers.parse<String>(json?['scanlator']);
    final pagesCount = parsers.parse<int>(json?['num_pages']);

    final book = Book._internal(
      title    : BookTitle.parse(json?['title']),
      id       : parsers.parse(json?['id']),
      media    : parsers.parse(json?['media_id']),
      favorites: parsers.parse(json?['num_favorites']),
      // pages    : parsers.parse(json?['num_pages']),
      scanlator: scanlator.isEmpty == true
        ? null
        : scanlator,
      uploaded : parsers.parse(json?['upload_date']),
      tags     : TagsList(parsers.parseList(json?['tags'])),
    );

    final cover = Image.parse(
      images['cover'],
      id: 0,
      book: book,
      thumbnail: false,
    );

    final thumbnail = Image.parse(
      images['thumbnail'],
      id: 0,
      book: book,
      thumbnail: true,
    );

    var i = 1;
    final pages = List<Image>.unmodifiable(
      parsers.parseList<Image>(
        images['pages'],
        customItemParser: (dynamic json) => Image.parse(
          json,
          id: i++,
          book: book,
        ),
      ),
    );

    if (pages.length != pagesCount)
      throw const FormatException('Bad JSON: pages count mismatch.');

    return book
      ..cover = cover
      ..thumbnail = thumbnail
      ..pages = pages;
  }
}