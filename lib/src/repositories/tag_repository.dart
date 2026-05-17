import '../api/api_http_client.dart';
import '../models/paginated.dart';
import '../models/tags/tag.dart';
import '../models/tags/tag_type.dart';


/// Collection of api methods related to tag operations.
class TagRepository {
  /// Creates a tag repository with the given API client.
  const TagRepository(this._client);

  /// The API client used for network requests.
  final ApiHttpClient _client;

  /// Look up multiple tags by their IDs (comma‑separated, max 100).
  Future<List<Tag>> getTagsByIds(List<int> ids) => _client
      .getModel('/api/v2/tags/ids', queryParameters: {'ids': ids.join(',')});

  /// Autocomplete tags by name prefix.
  Future<List<Tag>> searchTags(String query, {
    TagType? type,
    int limit = 10,
  }) => _client.postModel('/api/v2/tags/search', body: {
    'type':? type?.name,
    'query': query,
    'limit': limit,
  });

  /// Get paginated tags of a specific type.
  Future<Paginated<Tag>> getTagsByType(
    TagType type, {
    String sort = 'popular',
    int page = 1,
    int perPage = 25,
  }) =>
      _client.getModel(
        '/api/v2/tags/${type.name}',
        queryParameters: {'sort': sort, 'page': page, 'per_page': perPage},
      );

  /// Get a single tag by its type and slug.
  Future<Tag> getTagBySlug(TagType type, String slug) =>
      _client.getModel('/api/v2/tags/${type.name}/$slug');
}
