import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';
import '../hooks.dart';

part 'download_info.mapper.dart';


/// Book download info.
@immutable
@MappableClass()
class const DownloadInfo({
    required this.url,
    required this.expires,
  }) with DownloadInfoMappable {
  /// Book download info.
  this;

  /// Parses [DownloadInfo] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [DownloadInfo] object.
  /// * [DownloadInfo] - then value will be returned as-is.
  static DownloadInfo Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<DownloadInfo>;

  /// Parses [List] of [DownloadInfo] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [DownloadInfo] - then value will be returned as-is.
  static List<DownloadInfo> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<DownloadInfo>>;

  /// Parses JSON string into [DownloadInfo] similarly to [parse].
  static DownloadInfo Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<DownloadInfo>;

  /// Parses JSON string into [List] of [DownloadInfo] instances similarly to
  /// [parseList].
  static List<DownloadInfo> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<DownloadInfo>>;

  /// Book download url.
  @MappableField(key: 'url')
  final String url;

  /// Download link expires at.
  @MappableField(key: 'expires', hook: DateHook())
  final DateTime expires;
}
