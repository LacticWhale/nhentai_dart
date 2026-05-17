import 'package:dart_mappable/dart_mappable.dart';
import 'package:meta/meta.dart';

import '../../mapper_container_extension.dart';
import '../../models.dart';

part 'authenticated_user.mapper.dart';


/// Represent authenticated user.
@immutable
@MappableClass()
class const AuthenticatedUser({
    required super.id,
    required super.username,
    required super.slug,
    required super.avatar,
    super.theme = 'black',
    super.staff = false,
    super.superuser = false,
    this.about = '',
    this.favoriteTags = '',
    this.email,
  }) extends UserInfo with AuthenticatedUserMappable {
  /// User self.
  this;

  /// Parses [AuthenticatedUser] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [AuthenticatedUser] object.
  /// * [AuthenticatedUser] - then value will be returned as-is.
  static AuthenticatedUser Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<AuthenticatedUser>;

  /// Parses [List] of [AuthenticatedUser] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [AuthenticatedUser] - then value will be returned as-is.
  static List<AuthenticatedUser> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<AuthenticatedUser>>;

  /// Parses JSON string into [AuthenticatedUser] similarly to [parse].
  static AuthenticatedUser Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<AuthenticatedUser>;

  /// Parses JSON string into [List] of [AuthenticatedUser] instances similarly to
  /// [parseList].
  static List<AuthenticatedUser> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<AuthenticatedUser>>;

  /// User’s "about me" text.
  @MappableField(key: 'about')
  final String about;

  /// User’s favorite tags as a string (format unknown).
  @MappableField(key: 'favorite_tags')
  final String favoriteTags;

  /// User’s email (may be null for API key authentication).
  @MappableField(key: 'email')
  final String? email;
}
