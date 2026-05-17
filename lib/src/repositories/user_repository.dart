import '../api/api_http_client.dart';
import '../models/book.dart';
import '../models/book/book_preview.dart';
import '../models/paginated.dart';
import '../models/tags/blacklist_list_response.dart';
import '../models/tags/blacklist_update_request.dart';
import '../models/user.dart';


/// Collection of api methods related to user operations.
class UserRepository {
  /// Creates a user repository with the given API client.
  const UserRepository(this._client);

  /// The API client used for network requests.
  final ApiHttpClient _client;

  /// Get a user's public profile.
  Future<User> getUser(int id, String slug) => _client.getModel('/api/v2/users/$id/$slug');

  /// Get the current user's favorite books (requires authentication).
  Future<Paginated<BookPreview>> getFavorites({
    String? query,
    int page = 1,
  }) =>
      _client.getModel(
        '/api/v2/favorites',
        queryParameters: {'q': query, 'page': page},
      );

  /// Get a random book ID from the authenticated user's favorites (requires authentication).
  Future<int> getFavoriteRandomId() => _client.getModel('/api/v2/favorites/random');

  /// Get the current user's blacklisted tags (requires authentication).
  Future<BlacklistListResponse> getBlacklistTags() =>
      _client.getModel('/api/v2/blacklist');

  /// Update the user's blacklist (add/remove tags) – (requires authentication).
  Future<void> updateBlacklist(BlacklistUpdateRequest request) =>
    _client.postJson('/api/v2/blacklist', body: request.toJson());

  /// Get just the tag IDs for the authenticated user's blacklist (requires authentication).
  Future<List<int>> getBlacklistTagIds() => _client.getModel('/api/v2/blacklist/ids');

  /// Get the current user's full profile (requires authentication).
  Future<AuthenticatedUser> getMe() =>
      _client.getModel('/api/v2/user');

  // TODO(user): User methods.
}
