import '../api/api_http_client.dart';
import '../models/book.dart';
import '../models/favorite.dart';
import '../models/paginated.dart';


/// Collection of api methods related to book operations.
class BookRepository {
  /// Creates a gallery repository with the given API client.
  const BookRepository(this._client);

  /// The API client used for network requests.
  final ApiHttpClient _client;

  /// Get paginated list of all book (newest first).
  Future<Paginated<BookPreview>> getRecent({
    int page = 1,
    int perPage = 25,
  }) =>
      _client.getModel(
        '/api/v2/galleries',
        queryParameters: {'page': page, 'per_page': perPage},
      );

  /// Get books filtered by a specific tag ID.
  Future<Paginated<BookPreview>> getByTag({
    required int tagId,
    String sort = 'date',
    int page = 1,
    int perPage = 25,
  }) =>
      _client.getModel(
        '/api/v2/galleries/tagged',
        queryParameters: {
          'tag_id': tagId,
          'sort': sort,
          'page': page,
          'per_page': perPage,
        },
      );

  /// Get today's popular book.
  Future<List<BookPreview>> getPopular() =>
      _client.getModel('/api/v2/galleries/popular');

  /// Get a random book ID.
  Future<int> getRandomId() => _client
      .getModel<BookRandomIdResponse>('/api/v2/galleries/random')
      .then((res) => res.id);


  /// Get a single book by ID with optional included data.
  Future<Book> getById(
    int galleryId, {
    List<String> include = const [],
  }) {
    final query = include.isEmpty ? null : {'include': include.join(',')};

    return _client.getModel(
      '/api/v2/galleries/$galleryId',
      queryParameters: query,
    );
  }

  /// Get galleries related to the given book ID.
  Future<List<BookPreview>> getRelated(int bookId) =>
      _client.getModel('/api/v2/galleries/$bookId/related');

  /// Check if the current user has favorited a book (requires authentication).
  Future<FavoriteResponse> isFavorited(int bookId) => _client
      .getModel('/api/v2/galleries/$bookId/favorite');

  /// Add a book to the user's favorites (requires authentication).
  Future<FavoriteResponse> favorite(int bookId) => _client
      .postModel('/api/v2/galleries/$bookId/favorite');

  /// Remove a book from the user's favorites (requires authentication).
  Future<FavoriteResponse> unfavorite(int bookId) =>
      _client.deleteModel('/api/v2/galleries/$bookId/favorite');

  // TODO(stuff, low_priority): /api/v2/galleries/$bookId/edit

  ///
  Future<DownloadInfo> getDownloadInfo(int bookId, String type) =>
      _client.getModel('/api/v2/galleries/$bookId/download');
}
