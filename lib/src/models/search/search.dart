import '../../models.dart';


/// Search result.
class Search(SearchResult result, {
    required this.query,
    required this.sort,
    required this.page,
  }) extends Paginated<BookPreview> {
  /// Creates a search result.
  this : super(
      result: result.result,
      limit: result.limit,
      total: result.total,
      count: result.count,
    );

  /// Query used for this search.
  final SearchQuery query;
  /// Sort used for this search.
  final SearchSort sort;
  /// Associated search page.
  final int page;

  /// Returns string summary of this search.
  @override
  String toString() => 'Search "$query" (Sort: ${sort.toString() == '' ? 'recent' : sort}; $page/$total; limit: $limit)';
}
