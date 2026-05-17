// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_preview.dart';

class BookPreviewMapper extends ClassMapperBase<BookPreview> {
  BookPreviewMapper._();

  static BookPreviewMapper? _instance;
  static BookPreviewMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookPreviewMapper._());
      BookTitleMapper.ensureInitialized();
      ImageThumbnailMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BookPreview';

  static int _$id(BookPreview v) => v.id;
  static const Field<BookPreview, int> _f$id = Field('id', _$id);
  static int _$media(BookPreview v) => v.media;
  static const Field<BookPreview, int> _f$media = Field(
    'media',
    _$media,
    key: r'media_id',
  );
  static BookTitle _$title(BookPreview v) => v.title;
  static const Field<BookPreview, BookTitle> _f$title = Field('title', _$title);
  static ImageThumbnail _$thumbnail(BookPreview v) => v.thumbnail;
  static const Field<BookPreview, ImageThumbnail> _f$thumbnail = Field(
    'thumbnail',
    _$thumbnail,
  );
  static int _$count(BookPreview v) => v.count;
  static const Field<BookPreview, int> _f$count = Field(
    'count',
    _$count,
    key: r'num_pages',
  );
  static List<int> _$tagIds(BookPreview v) => v.tagIds;
  static const Field<BookPreview, List<int>> _f$tagIds = Field(
    'tagIds',
    _$tagIds,
    key: r'tag_ids',
  );
  static bool _$blacklisted(BookPreview v) => v.blacklisted;
  static const Field<BookPreview, bool> _f$blacklisted = Field(
    'blacklisted',
    _$blacklisted,
  );

  @override
  final MappableFields<BookPreview> fields = const {
    #id: _f$id,
    #media: _f$media,
    #title: _f$title,
    #thumbnail: _f$thumbnail,
    #count: _f$count,
    #tagIds: _f$tagIds,
    #blacklisted: _f$blacklisted,
  };

  @override
  final MappingHook hook = const ChainedHook([
    BookPreviewThumbnailHook(),
    BookPreviewTitleHook(),
  ]);
  static BookPreview _instantiate(DecodingData data) {
    return BookPreview(
      id: data.dec(_f$id),
      media: data.dec(_f$media),
      title: data.dec(_f$title),
      thumbnail: data.dec(_f$thumbnail),
      count: data.dec(_f$count),
      tagIds: data.dec(_f$tagIds),
      blacklisted: data.dec(_f$blacklisted),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static BookPreview fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookPreview>(map);
  }

  static BookPreview fromJson(String json) {
    return ensureInitialized().decodeJson<BookPreview>(json);
  }
}

mixin BookPreviewMappable {
  String toJson() {
    return BookPreviewMapper.ensureInitialized().encodeJson<BookPreview>(
      this as BookPreview,
    );
  }

  Map<String, dynamic> toMap() {
    return BookPreviewMapper.ensureInitialized().encodeMap<BookPreview>(
      this as BookPreview,
    );
  }

  BookPreviewCopyWith<BookPreview, BookPreview, BookPreview> get copyWith =>
      _BookPreviewCopyWithImpl<BookPreview, BookPreview>(
        this as BookPreview,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return BookPreviewMapper.ensureInitialized().stringifyValue(
      this as BookPreview,
    );
  }
}

extension BookPreviewValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookPreview, $Out> {
  BookPreviewCopyWith<$R, BookPreview, $Out> get $asBookPreview =>
      $base.as((v, t, t2) => _BookPreviewCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BookPreviewCopyWith<$R, $In extends BookPreview, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BookTitleCopyWith<$R, BookTitle, BookTitle> get title;
  ImageThumbnailCopyWith<$R, ImageThumbnail, ImageThumbnail> get thumbnail;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get tagIds;
  $R call({
    int? id,
    int? media,
    BookTitle? title,
    ImageThumbnail? thumbnail,
    int? count,
    List<int>? tagIds,
    bool? blacklisted,
  });
  BookPreviewCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookPreviewCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookPreview, $Out>
    implements BookPreviewCopyWith<$R, BookPreview, $Out> {
  _BookPreviewCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookPreview> $mapper =
      BookPreviewMapper.ensureInitialized();
  @override
  BookTitleCopyWith<$R, BookTitle, BookTitle> get title =>
      $value.title.copyWith.$chain((v) => call(title: v));
  @override
  ImageThumbnailCopyWith<$R, ImageThumbnail, ImageThumbnail> get thumbnail =>
      $value.thumbnail.copyWith.$chain((v) => call(thumbnail: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get tagIds =>
      ListCopyWith(
        $value.tagIds,
        (v, t) => ObjectCopyWith(v, $identity, t),
        (v) => call(tagIds: v),
      );
  @override
  $R call({
    int? id,
    int? media,
    BookTitle? title,
    ImageThumbnail? thumbnail,
    int? count,
    List<int>? tagIds,
    bool? blacklisted,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (media != null) #media: media,
      if (title != null) #title: title,
      if (thumbnail != null) #thumbnail: thumbnail,
      if (count != null) #count: count,
      if (tagIds != null) #tagIds: tagIds,
      if (blacklisted != null) #blacklisted: blacklisted,
    }),
  );
  @override
  BookPreview $make(CopyWithData data) => BookPreview(
    id: data.get(#id, or: $value.id),
    media: data.get(#media, or: $value.media),
    title: data.get(#title, or: $value.title),
    thumbnail: data.get(#thumbnail, or: $value.thumbnail),
    count: data.get(#count, or: $value.count),
    tagIds: data.get(#tagIds, or: $value.tagIds),
    blacklisted: data.get(#blacklisted, or: $value.blacklisted),
  );

  @override
  BookPreviewCopyWith<$R2, BookPreview, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _BookPreviewCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

