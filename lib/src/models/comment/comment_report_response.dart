import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'comment_report_response.mapper.dart';


/// Response for comment report operation.
@immutable
@MappableClass()
class const CommentReportResponse({
    required this.success,
    required this.message,
  }) with CommentReportResponseMappable {
  /// Comment report response.
  this;

  /// Parses [CommentReportResponse] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [CommentReportResponse] object.
  /// * [CommentReportResponse] - then value will be returned as-is.
  static CommentReportResponse Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<CommentReportResponse>;

  /// Parses [List] of [CommentReportResponse] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [CommentReportResponse] - then value will be returned as-is.
  static List<CommentReportResponse> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<CommentReportResponse>>;

  /// Parses JSON string into [CommentReportResponse] similarly to [parse].
  static CommentReportResponse Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<CommentReportResponse>;

  /// Parses JSON string into [List] of [CommentReportResponse] instances similarly to
  /// [parseList].
  static List<CommentReportResponse> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<CommentReportResponse>>;

  /// Comment report response
  @MappableField()
  final bool success;

  /// Message describing the result of the report operation.
  @MappableField(key: 'message')
  final String message;
}
