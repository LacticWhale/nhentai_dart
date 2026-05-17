import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'image_thumbnail.dart';
part 'image.dart';
part 'base_image.mapper.dart';



/// [BaseImage] class extended by [Image] and [ImageThumbnail].
@immutable
@MappableClass()
sealed class const BaseImage({
    required this.index,
    required this.path,
    required this.width,
    required this.height,
  }) {
  /// Base image.
  this;

  /// Image index.
  /// * `0` for book cover.
  /// * _Page number_ for usual pages.
  @MappableField(key: 'number')
  final int index;

  /// Image path on CDN.
  @MappableField(key: 'path')
  final String path;

  /// Image width in pixels.
  @MappableField(key: 'width')
  final int width;

  /// Image height in pixels.
  @MappableField(key: 'height')
  final int height;

  /// Whether image is a book cover.
  bool get isCover => index == 0;

  /// Whether image is thumbnail.
  bool get isThumbnail => this is ImageThumbnail;
}
