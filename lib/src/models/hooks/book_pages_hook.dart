import 'package:dart_mappable/dart_mappable.dart';


/// Moves page thumbnail related fields of image to new field thumbnail on image.
class BookPagesHook extends MappingHook {
  /// Creates hook.
  const BookPagesHook();

  @override
  Object? beforeDecode(Object? value) {
    final map2 = switch (value) {
      final Map<String, dynamic> map && {'pages': final List<dynamic> pages} =>
        {
          ...map,
          'pages': [
            for (final page in pages)
            if (page case {
              'number': final index,
              'path': final path,
              'width': final width,
              'height': final height,
              'thumbnail': final tPath,
              'thumbnail_width': final tWidth,
              'thumbnail_height': final tHight
              } ) {
                'number': index,
                'path': path,
                'width': width,
                'height': height,
                'thumbnail': {
                  'number': index,
                  'path': tPath,
                  'width': tWidth,
                  'height': tHight,
              }
            }
          ]
        },
      _ => value,
    };
    return map2;
  }
}
