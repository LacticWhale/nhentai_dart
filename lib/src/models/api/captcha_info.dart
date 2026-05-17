import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'captcha_info.mapper.dart';


/// Captcha provider info for front-end widget.
@immutable
@MappableClass()
class CaptchaInfo({
    required this.provider,
    required this.siteKey,
  }) with CaptchaInfoMappable {
  /// Captcha.
  this;

  /// Parses [CaptchaInfo] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [CaptchaInfo] object.
  /// * [CaptchaInfo] - then value will be returned as-is.
  static CaptchaInfo Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<CaptchaInfo>;

  /// Parses [List] of [CaptchaInfo] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [CaptchaInfo] - then value will be returned as-is.
  static List<CaptchaInfo> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<CaptchaInfo>>;

  /// Parses JSON string into [CaptchaInfo] similarly to [parse].
  static CaptchaInfo Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<CaptchaInfo>;

  /// Parses JSON string into [List] of [CaptchaInfo] instances similarly to
  /// [parseList].
  static List<CaptchaInfo> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<CaptchaInfo>>;

  /// Provider.
  @MappableField(key: 'provider')
  final String provider;

  /// Site key.
  @MappableField(key: 'site_key')
  final String siteKey;
}
