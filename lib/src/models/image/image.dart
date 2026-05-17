part of 'base_image.dart';


/// Image.
@immutable
@MappableClass()
final class const Image({
    required this.thumbnail,
    required super.path,
    required super.index,
    required super.width,
    required super.height,
  }) extends BaseImage with ImageMappable {
  /// Image.
  this;

  /// Parses [Image] instance from a given value.
  ///
  /// Value can be one of the following:
  /// * [Map] - then object will be parsed into [Image] object.
  /// * [Image] - then value will be returned as-is.
  static Image Function(dynamic value) get parse =>
    MapperContainer.globals.initialized.fromValue<Image>;

  /// Parses [List] of [Image] instances from a given value.
  ///
  /// Value can be one of the following:
  /// * [Iterable] of [dynamic] - then each object will be decoded same way as
  ///   [parse] and resulting [Iterable] will be returned.
  /// * [Iterable] of [Image] - then value will be returned as-is.
  static List<Image> Function(dynamic value) get parseList =>
    MapperContainer.globals.initialized.fromValue<List<Image>>;

  /// Parses JSON string into [Image] similarly to [parse].
  static Image Function(String json) get parseJson =>
    MapperContainer.globals.initialized.fromJson<Image>;

  /// Parses JSON string into [List] of [Image] instances similarly to
  /// [parseList].
  static List<Image> Function(String json) get parseJsonList =>
    MapperContainer.globals.initialized.fromJson<List<Image>>;

  /// Image thumbnail.
  @MappableField(key: 'thumbnail')
  final ImageThumbnail thumbnail;
}
