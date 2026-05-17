import 'package:dart_mappable/dart_mappable.dart';

import '../api/api_http_client.dart';
import '../models/search/search.dart';
import '../models/search/search_query.dart';
import '../models/search/search_query_full.dart';
import '../models/search/search_query_text.dart';
import '../models/search/search_sort.dart';


/// Collection of api methods related to search operations.
class SearchRepository {
  /// Creates a search repository with the given API client.
  const SearchRepository(this._client);

  /// The API client used for network requests.
  final ApiHttpClient _client;

  /// Returns single [Search] page for [query].
  ///
  /// Optionally you can provide _positive_ [page] number and [sort] parameter.
  ///
  /// Throws [ArgumentError] if [page] is less than 1.
  ///
  /// {@template api_throws}
  /// Throws [ApiException] if server responded with JSON error.
  ///
  /// Throws [ApiClientException] if server responded with not a JSON.
  ///
  /// Throws [MapperException] if it is impossible to parse response into target
  /// model.
  /// {@endtemplate}
  Future<Search> _searchSinglePage(SearchQuery query, {
    int page = 1,
    SearchSort sort = SearchSort.recent,
  }) async {
    if (page < 1) {
      throw ArgumentError.value(page, 'page', 'Must be grater than 0');
    }

    return Search(
      await _client.getModel(
        '/api/v2/search',
        queryParameters: {
          'query': query.toString(),
          'page' : page.toString(),
          if (sort != SearchSort.recent)
            'sort': sort.toString(),
        },
      ),
      query: query,
      page: page,
      sort: sort,
    );
  }

  /// Returns [Stream] of [Search] pages for [query].
  ///
  /// [count] parameter defines a maximum amount of pages to request.
  ///
  /// Optionally you can provide _positive_ [page] number and [sort] parameter.
  ///
  /// Throws [ArgumentError] if [page] is less than 1.
  ///
  /// {@macro api_throws}
  Stream<Search> _search(SearchQuery query, {
    int page = 1,
    int? count,
    SearchSort sort = SearchSort.recent,
  }) async* {
    if (page < 1) {
      throw ArgumentError.value(page, 'page', 'Must be grater than 0');
    }

    late int pages;

    if (count != null) {
      pages = page + count - 1;
    }

    var currentPage = page;

    Search? search;
    do {
      search = await _searchSinglePage(query, page: currentPage++, sort: sort);
      // if (search == null)
      //   throw const FormatException('Cannot parse search result.');
      if (count == null) {
        pages = search.limit;
      }
      yield search;
    } while (currentPage <= pages);
  }

  /// Returns single [Search] page for text [query].
  ///
  /// Optionally you can provide _positive_ [page] number and [sort] parameter.
  ///
  /// Throws [ArgumentError] if [page] is less than 1.
  ///
  /// {@macro api_throws}
  Future<Search> searchSinglePage(String query, {
    int page = 1,
    SearchSort sort = SearchSort.recent,
  }) => _searchSinglePage(SearchQueryText(query), page: page, sort: sort);

  /// Returns [Stream] of [Search] pages for text [query].
  ///
  /// [count] parameter defines a maximum amount of pages to request.
  ///
  /// Optionally you can provide _positive_ [page] number and [sort] parameter.
  ///
  /// Throws [ArgumentError] if [page] is less than 1.
  ///
  /// {@macro api_throws}
  Stream<Search> search(String query, {
    int page = 1,
    int? count,
    SearchSort sort = SearchSort.recent,
  }) => _search(SearchQueryText(query), page: page, count: count, sort: sort);

  /// Returns single [Search] page for [query].
  ///
  /// Optionally you can provide _positive_ [page] number and [sort] parameter.
  ///
  /// Throws [ArgumentError] if [page] is less than 1.
  ///
  /// {@macro api_throws}
  Future<Search> searchQuerySinglePage(SearchQueryFull query, {
    int page = 1,
    SearchSort sort = SearchSort.recent,
  }) => _searchSinglePage(query, page: page, sort: sort);

    /// Returns [Stream] of [Search] pages for [query].
  ///
  /// [count] parameter defines a maximum amount of pages to request.
  ///
  /// Optionally you can provide _positive_ [page] number and [sort] parameter.
  ///
  /// Throws [ArgumentError] if [page] is less than 1.
  ///
  /// {@macro api_throws}
  Stream<Search> searchQuery(SearchQueryFull query, {
    int page = 1,
    int? count,
    SearchSort sort = SearchSort.recent,
  }) => _search(query, page: page, count: count, sort: sort);
}
