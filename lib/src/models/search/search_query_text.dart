import 'package:meta/meta.dart';

import 'search_query.dart';


/// Search query with text.
@immutable
class const SearchQueryText(this.value) implements SearchQuery {
  /// Creates a text query.
  this;

  /// Underlying search text.
  final String value;

  @override
  String toString() => value;
}
