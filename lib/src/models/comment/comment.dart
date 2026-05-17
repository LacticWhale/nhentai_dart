import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';
import '../../mapper_container_extension.dart';
import '../hooks.dart';
import '../user.dart';
import '../user/user.dart';

part 'comment.mapper.dart';


/// Book comment.
@immutable
@MappableClass()
class const Comment({
    required this.id,
    required this.bookId,
    required this.poster,
    required this.posted,
    required this.body,
  }) with CommentMappable {
  /// Comment.
  this;

  /// Parses [Comment] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [Comment] object.
  /// * [Comment] - then value will be returned as-is.
  static Comment Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<Comment>;

  /// Parses [List] of [Comment] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [Comment] - then value will be returned as-is.
  static List<Comment> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<Comment>>;

  /// Parses JSON string into [Comment] similarly to [parse].
  static Comment Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<Comment>;

  /// Parses JSON string into [List] of [Comment] instances similarly to
  /// [parseList].
  static List<Comment> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<Comment>>;

  /// Unique comment ID.
  @MappableField(key: 'id')
  final int id;

  /// ID of the gallery this comment belongs to.
  @MappableField(key: 'gallery_id')
  final int bookId;

  /// Poster information (user).
  @MappableField(key: 'poster')
  final User poster;

  /// Date of when the comment was posted.
  @MappableField(key: 'post_date', hook: DateHook())
  final DateTime posted;

  /// Comment body (HTML formatted).
  @MappableField(key: 'body')
  final String body;
}
