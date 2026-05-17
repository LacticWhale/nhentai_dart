import 'package:dart_mappable/dart_mappable.dart';


/// Combines image and thumbnail into nested object.
class BookCoverHook extends MappingHook {
  /// Creates hook.
  const BookCoverHook();

  @override
  Object? beforeDecode(Object? value) {

    final map2 = switch (value) {
      final Map<String, dynamic> map && {'cover': final Map<String, dynamic> cover} =>
        switch (value) {
          {'thumbnail': final Map<String, dynamic> thumbnail} =>
            {
              ...map,
              'cover': {
                ...cover,
                'number': 0,
                'thumbnail': {
                  ...thumbnail,
                  'number': 0,
                },
              }
            },
          _ => value,
        },
      _ => value,
    };

    print(map2);

    return map2;
  }
}
