import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'api_info.mapper.dart';


/// Api info.
@immutable
@MappableClass()
class const ApiInfo({
    required this.version,
    required this.message,
  }) with ApiInfoMappable {
  /// Response from API root request.
  this;

  /// Parses [ApiInfo] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [ApiInfo] object.
  /// * [ApiInfo] - then value will be returned as-is.
  static ApiInfo Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<ApiInfo>;

  /// Parses [List] of [ApiInfo] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [ApiInfo] - then value will be returned as-is.
  static List<ApiInfo> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<ApiInfo>>;

  /// Parses JSON string into [ApiInfo] similarly to [parse].
  static ApiInfo Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<ApiInfo>;

  /// Parses JSON string into [List] of [ApiInfo] instances similarly to
  /// [parseList].
  static List<ApiInfo> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<ApiInfo>>;

  /// Remote API version.
  @MappableField(key: 'version')
  final String version;

  /// Message from developers.
  @MappableField(key: 'message')
  final String message;
}
