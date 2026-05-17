import 'package:dart_mappable/dart_mappable.dart';

/// Create thumbnail field on book preview object
/// with cover thumbnail related fields.
class BookPreviewThumbnailHook extends MappingHook {
  /// Create hook.
  const BookPreviewThumbnailHook();

  @override
  Object? beforeDecode(Object? value) => switch (value) {
      final Map<String, dynamic> map && {
        'thumbnail': final String path,
        'thumbnail_width': final int width,
        'thumbnail_height': final int height,
        } =>
        {
          ...map,
          'thumbnail': {
            'path': path,
            'width': width,
            'height': height,
            'number': 0,
          },
        },
      _ => value,
    };
}
