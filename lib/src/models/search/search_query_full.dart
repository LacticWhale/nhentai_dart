import '../../models.dart';


/// Full filtered search query.
class const SearchQueryFull({
    this.text = '*',
    this.include,
    this.exclude,
    this.minPages,
    this.maxPages,
    this.minFavorite,
    this.maxFavorite,
    this.before,
    this.after,
  }) implements SearchQuery {
  /// Search query full.
  this;

  /// Text query.
  final String? text;

  /// Included tags.
  final Iterable<Tag>? include;
  String get _include => include?.map((tag) => ' ${tag.query}').join(' ') ?? '';

  /// Excluded tags.
  final Iterable<Tag>? exclude;
  String get _exclude => exclude?.map((tag) => ' -${tag.query}').join(' ') ?? '';

  /// Minimum number of pages.
  final int? minPages;
  String get _minPages => minPages != null ? ' pages:>=$minPages' : '';

  /// Maximum number of pages.
  final int? maxPages;
  String get _maxPages => maxPages != null ? ' pages:<=$maxPages' : '';

  /// Minimum number of likes.
  final int? minFavorite;
  String get _minFavorite => minFavorite != null ? ' favorites:>=$minFavorite' : '';

  /// Maximum number of likes.
  final int? maxFavorite;
  String get _maxFavorite => maxFavorite != null ? ' favorites:<=$maxFavorite' : '';

  /// Maximum upload date.
  final DateTime? before;

  /// Minimum upload date.
  final DateTime? after;

  @override
  String toString() => '$text$_include$_exclude$_maxFavorite$_maxPages$_minFavorite$_minPages';
}
