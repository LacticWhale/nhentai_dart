import 'package:dart_mappable/dart_mappable.dart';

part 'download_type.mapper.dart';


/// Book download type.
@MappableEnum()
enum DownloadType {
  /// Download the book as a zip file.
  zip('zip'),

  /// Download the book as a comic book.
  cbz('cbz'),

  /// Download the book as a torrent.
  torrent('torrent');

  const DownloadType([ this.value = 'date', ]);

  /// String value of download type.
  final String value;

  /// Returns string value of download type.
  @override
  String toString() => value;
}
