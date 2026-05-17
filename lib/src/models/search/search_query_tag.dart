import 'package:meta/meta.dart';

import '../tags.dart';
import 'search_query.dart';


/// Search query with tag.
@immutable
class const SearchQueryTag(this.tag) implements SearchQuery {
  /// Creates a tag query.
  this;

  /// Underlying search tag.
  final Tag tag;

  @override
  String toString() => '${tag.type.name}:"$tag"';
}

/// Extension to help
extension SearchQueryTagExtension on Tag {
  /// [SearchQuery] based on this tag.
  SearchQueryTag get query => SearchQueryTag(this);
}
