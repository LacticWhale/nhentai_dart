import 'package:dart_mappable/dart_mappable.dart';


/// Combines english and japanese title into title field. Selects pretty as english.
class BookPreviewTitleHook extends MappingHook {
  /// Creates hook.
  const BookPreviewTitleHook();

  @override
  Object? beforeDecode(Object? value) => switch (value) {
      final Map<String, dynamic> map
        && {
          'english_title': final String english,
          'japanese_title': final String? japanese,
          } => {
            ...map,
            'title': {
              'pretty': english,
              'english': english,
              'japanese': ?japanese,
            },
          },
      _ => value,
    };
}
