import 'package:dart_mappable/dart_mappable.dart';

import '../../mapper_container_extension.dart';

part 'book_random_id_response.mapper.dart';


@MappableClass()
/// Represent successful response for a random gallery request
class const BookRandomIdResponse(this.id) with BookRandomIdResponseMappable {
  /// Random id response.
  this;

  /// Parses [BookRandomIdResponse] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [BookRandomIdResponse] object.
  /// * [BookRandomIdResponse] - then value will be returned as-is.
  static BookRandomIdResponse Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<BookRandomIdResponse>;

  /// Parses [List] of [BookRandomIdResponse] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [BookRandomIdResponse] - then value will be returned as-is.
  static List<BookRandomIdResponse> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<BookRandomIdResponse>>;

  /// Parses JSON string into [BookRandomIdResponse] similarly to [parse].
  static BookRandomIdResponse Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<BookRandomIdResponse>;

  /// Parses JSON string into [List] of [BookRandomIdResponse] instances similarly to
  /// [parseList].
  static List<BookRandomIdResponse> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<BookRandomIdResponse>>;

  /// Gallery id.
  @MappableField(key: 'id')
  final int id;
}
