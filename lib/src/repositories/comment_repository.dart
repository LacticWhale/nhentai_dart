import '../api/api_http_client.dart';
import '../models/comment/comment.dart';
import '../models/comment/comment_report_response.dart';


/// Collection of api methods related to comment operations.
class CommentRepository {
  /// Creates a comment repository with the given API client.
  const CommentRepository(this._client);

  /// The API client used for network requests.
  final ApiHttpClient _client;

  /// Get all comments for a given book id.
  Future<List<Comment>> getBookComments(int bookId) => _client
      .getModel('/api/v2/galleries/$bookId/comments');

  /// Create a new comment on a book (requires authentication).
  Future<Comment> createComment(
    int bookId,
    String body, {
    String? captchaResponse,
  }) =>
      _client.postModel(
        '/api/v2/galleries/$bookId/comments',
        body: {
          'body': body,
          'captcha_response': ?captchaResponse,
        },
      );

  /// Get the visible comment count for a book.
  Future<int> getCommentCount(int bookId) => _client
      .getModel('/api/v2/galleries/$bookId/comments/count');

  /// Delete a comment (requires authentication, must be owner or staff).
  Future<void> deleteComment(int commentId) =>
      _client.deleteModel('/api/v2/comments/$commentId');

  /// Flag a comment for review.
  Future<CommentReportResponse> reportComment(int commentId, String reason) =>
      _client.postModel('/api/v2/comments/$commentId/flag', body: {'reason': reason});
}
