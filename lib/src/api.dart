import 'package:http/http.dart' as http;

import 'api/api_http_client.dart';
import 'repositories/repositories.dart';


/// Before request callback.
typedef BeforeRequestCallback = void Function(http.Request request);

/// Convenience facade that aggregates all repositories.
class Api {
  /// Creates [Api] instance from [ApiHttpClient]
  Api(this.client)
    : books = BookRepository(client),
      root = RootRepository(client),
      search = SearchRepository(client),
      tags = TagRepository(client),
      comments = CommentRepository(client),
      users = UserRepository(client),
      auth = AuthRepository(client);

  /// Creates [Api] instance with an optional HTTP client and base URL.
  Api.fromHttpClient({
    required String userAgent,
    http.Client? httpClient,
    String baseUrl = 'https://nhentai.net',
    BeforeRequestCallback? beforeRequest,
    })
      : this(ApiHttpClient(
        client: httpClient,
        baseUrl: baseUrl,
        beforeRequest: beforeRequest,
        userAgent: userAgent,
      ));

  /// The underlying API client.
  final ApiHttpClient client;

  /// Repository for gallery‑related endpoints.
  final BookRepository books;

  /// Repository for search endpoints.
  final SearchRepository search;

  /// Repository for tag endpoints.
  final TagRepository tags;

  /// Repository for comment endpoints.
  final CommentRepository comments;

  /// Repository for user account endpoints.
  final UserRepository users;

  /// Repository for authentication endpoints.
  final AuthRepository auth;

  /// Repository for root endpoints.
  final RootRepository root;
}
