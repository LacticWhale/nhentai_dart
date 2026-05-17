import 'package:dart_mappable/dart_mappable.dart';

import '../mapper_container_extension.dart';

part 'favorite.mapper.dart';

/// Favorite response.
@MappableClass()
class FavoriteResponse({
    required this.favorited,
    this.count,
  }) with FavoriteResponseMappable {
  /// Favorite response.
  this;

  /// Parses [FavoriteResponse] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [FavoriteResponse] object.
  /// * [FavoriteResponse] - then value will be returned as-is.
  static FavoriteResponse Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<FavoriteResponse>;

  /// Parses [List] of [FavoriteResponse] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [FavoriteResponse] - then value will be returned as-is.
  static List<FavoriteResponse> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<FavoriteResponse>>;

  /// Parses JSON string into [FavoriteResponse] similarly to [parse].
  static FavoriteResponse Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<FavoriteResponse>;

  /// Parses JSON string into [List] of [FavoriteResponse] instances similarly to
  /// [parseList].
  static List<FavoriteResponse> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<FavoriteResponse>>;

  /// Whether the gallery is favorited by the current user.
  @MappableField(key: 'favorited')
  final bool favorited;

  /// Total number of favorites for this gallery (may be null).
  @MappableField(key: 'num_favorites')
  final int? count;
}
