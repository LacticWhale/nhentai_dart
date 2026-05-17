import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../../data_model.dart';
import '../../mapper_container_extension.dart';

part 'user_info.mapper.dart';


/// User object returned after authentication.
@immutable
@MappableClass()
class const UserInfo({
    required super.id,
    required super.username,
    required super.slug,
    required super.avatar,
    super.staff = false,
    super.superuser = false,
    this.theme = 'black',
  }) extends User with UserInfoMappable {
  /// User info.
  this;

  /// Parses [UserInfo] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [UserInfo] object.
  /// * [UserInfo] - then value will be returned as-is.
  static UserInfo Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<UserInfo>;

  /// Parses [List] of [UserInfo] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [UserInfo] - then value will be returned as-is.
  static List<UserInfo> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<UserInfo>>;

  /// Parses JSON string into [UserInfo] similarly to [parse].
  static UserInfo Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<UserInfo>;

  /// Parses JSON string into [List] of [UserInfo] instances similarly to
  /// [parseList].
  static List<UserInfo> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<UserInfo>>;

  /// Theme preference.
  @MappableField(key: 'theme')
  final String theme;
}
