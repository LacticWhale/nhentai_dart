import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';

part 'user.mapper.dart';


/// Represent user.
@immutable
@MappableClass()
class const User({
    required this.id,
    required this.username,
    required this.slug,
    required this.avatar,
    this.superuser = false,
    this.staff = false,
  }) with UserMappable {
  /// User.
  this;

  /// Parses [User] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [User] object.
  /// * [User] - then value will be returned as-is.
  static User Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<User>;

  /// Parses [List] of [User] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [User] - then value will be returned as-is.
  static List<User> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<User>>;

  /// Parses JSON string into [User] similarly to [parse].
  static User Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<User>;

  /// Parses JSON string into [List] of [User] instances similarly to
  /// [parseList].
  static List<User> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<User>>;

  /// User ID.
  @MappableField(key: 'id')
  final int id;

  /// Username.
  @MappableField(key: 'username')
  final String username;

  /// URL slug.
  @MappableField(key: 'slug')
  final String slug;

  /// Avatar URL.
  @MappableField(key: 'avatar_url')
  final String avatar;

  /// Superuser flag.
  @MappableField(key: 'is_superuser')
  final bool superuser;

  /// Staff flag.
  @MappableField(key: 'is_stuff')
  final bool staff;
}
