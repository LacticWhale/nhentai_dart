// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book.dart';

class BookMapper extends ClassMapperBase<Book> {
  BookMapper._();

  static BookMapper? _instance;
  static BookMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookMapper._());
      BookTitleMapper.ensureInitialized();
      TagMapper.ensureInitialized();
      ImageMapper.ensureInitialized();
      CommentMapper.ensureInitialized();
      BookPreviewMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Book';

  static BookTitle _$title(Book v) => v.title;
  static const Field<Book, BookTitle> _f$title = Field('title', _$title);
  static int _$id(Book v) => v.id;
  static const Field<Book, int> _f$id = Field('id', _$id);
  static int _$media(Book v) => v.media;
  static const Field<Book, int> _f$media = Field(
    'media',
    _$media,
    key: r'media_id',
  );
  static int _$favorites(Book v) => v.favorites;
  static const Field<Book, int> _f$favorites = Field(
    'favorites',
    _$favorites,
    key: r'num_favorites',
  );
  static DateTime _$uploaded(Book v) => v.uploaded;
  static const Field<Book, DateTime> _f$uploaded = Field(
    'uploaded',
    _$uploaded,
    key: r'upload_date',
    hook: DateHook(),
  );
  static List<Tag> _$tags(Book v) => v.tags;
  static const Field<Book, List<Tag>> _f$tags = Field('tags', _$tags);
  static Image _$cover(Book v) => v.cover;
  static const Field<Book, Image> _f$cover = Field('cover', _$cover);
  static int _$count(Book v) => v.count;
  static const Field<Book, int> _f$count = Field(
    'count',
    _$count,
    key: r'num_pages',
  );
  static List<Image> _$pages(Book v) => v.pages;
  static const Field<Book, List<Image>> _f$pages = Field('pages', _$pages);
  static String? _$scanlator(Book v) => v.scanlator;
  static const Field<Book, String> _f$scanlator = Field(
    'scanlator',
    _$scanlator,
    opt: true,
  );
  static List<Comment>? _$comments(Book v) => v.comments;
  static const Field<Book, List<Comment>> _f$comments = Field(
    'comments',
    _$comments,
    opt: true,
  );
  static List<BookPreview>? _$related(Book v) => v.related;
  static const Field<Book, List<BookPreview>> _f$related = Field(
    'related',
    _$related,
    opt: true,
  );
  static bool? _$favorited(Book v) => v.favorited;
  static const Field<Book, bool> _f$favorited = Field(
    'favorited',
    _$favorited,
    key: r'is_favorited',
    opt: true,
  );

  @override
  final MappableFields<Book> fields = const {
    #title: _f$title,
    #id: _f$id,
    #media: _f$media,
    #favorites: _f$favorites,
    #uploaded: _f$uploaded,
    #tags: _f$tags,
    #cover: _f$cover,
    #count: _f$count,
    #pages: _f$pages,
    #scanlator: _f$scanlator,
    #comments: _f$comments,
    #related: _f$related,
    #favorited: _f$favorited,
  };

  @override
  final MappingHook hook = const ChainedHook([
    BookCoverHook(),
    BookPagesHook(),
  ]);
  static Book _instantiate(DecodingData data) {
    return Book(
      title: data.dec(_f$title),
      id: data.dec(_f$id),
      media: data.dec(_f$media),
      favorites: data.dec(_f$favorites),
      uploaded: data.dec(_f$uploaded),
      tags: data.dec(_f$tags),
      cover: data.dec(_f$cover),
      count: data.dec(_f$count),
      pages: data.dec(_f$pages),
      scanlator: data.dec(_f$scanlator),
      comments: data.dec(_f$comments),
      related: data.dec(_f$related),
      favorited: data.dec(_f$favorited),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Book fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Book>(map);
  }

  static Book fromJson(String json) {
    return ensureInitialized().decodeJson<Book>(json);
  }
}

mixin BookMappable {
  String toJson() {
    return BookMapper.ensureInitialized().encodeJson<Book>(this as Book);
  }

  Map<String, dynamic> toMap() {
    return BookMapper.ensureInitialized().encodeMap<Book>(this as Book);
  }

  BookCopyWith<Book, Book, Book> get copyWith =>
      _BookCopyWithImpl<Book, Book>(this as Book, $identity, $identity);
  @override
  String toString() {
    return BookMapper.ensureInitialized().stringifyValue(this as Book);
  }
}

extension BookValueCopy<$R, $Out> on ObjectCopyWith<$R, Book, $Out> {
  BookCopyWith<$R, Book, $Out> get $asBook =>
      $base.as((v, t, t2) => _BookCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BookCopyWith<$R, $In extends Book, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  BookTitleCopyWith<$R, BookTitle, BookTitle> get title;
  ListCopyWith<$R, Tag, TagCopyWith<$R, Tag, Tag>> get tags;
  ImageCopyWith<$R, Image, Image> get cover;
  ListCopyWith<$R, Image, ImageCopyWith<$R, Image, Image>> get pages;
  ListCopyWith<$R, Comment, CommentCopyWith<$R, Comment, Comment>>?
  get comments;
  ListCopyWith<
    $R,
    BookPreview,
    BookPreviewCopyWith<$R, BookPreview, BookPreview>
  >?
  get related;
  $R call({
    BookTitle? title,
    int? id,
    int? media,
    int? favorites,
    DateTime? uploaded,
    List<Tag>? tags,
    Image? cover,
    int? count,
    List<Image>? pages,
    String? scanlator,
    List<Comment>? comments,
    List<BookPreview>? related,
    bool? favorited,
  });
  BookCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Book, $Out>
    implements BookCopyWith<$R, Book, $Out> {
  _BookCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Book> $mapper = BookMapper.ensureInitialized();
  @override
  BookTitleCopyWith<$R, BookTitle, BookTitle> get title =>
      $value.title.copyWith.$chain((v) => call(title: v));
  @override
  ListCopyWith<$R, Tag, TagCopyWith<$R, Tag, Tag>> get tags => ListCopyWith(
    $value.tags,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(tags: v),
  );
  @override
  ImageCopyWith<$R, Image, Image> get cover =>
      $value.cover.copyWith.$chain((v) => call(cover: v));
  @override
  ListCopyWith<$R, Image, ImageCopyWith<$R, Image, Image>> get pages =>
      ListCopyWith(
        $value.pages,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(pages: v),
      );
  @override
  ListCopyWith<$R, Comment, CommentCopyWith<$R, Comment, Comment>>?
  get comments => $value.comments != null
      ? ListCopyWith(
          $value.comments!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(comments: v),
        )
      : null;
  @override
  ListCopyWith<
    $R,
    BookPreview,
    BookPreviewCopyWith<$R, BookPreview, BookPreview>
  >?
  get related => $value.related != null
      ? ListCopyWith(
          $value.related!,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(related: v),
        )
      : null;
  @override
  $R call({
    BookTitle? title,
    int? id,
    int? media,
    int? favorites,
    DateTime? uploaded,
    List<Tag>? tags,
    Image? cover,
    int? count,
    List<Image>? pages,
    Object? scanlator = $none,
    Object? comments = $none,
    Object? related = $none,
    Object? favorited = $none,
  }) => $apply(
    FieldCopyWithData({
      if (title != null) #title: title,
      if (id != null) #id: id,
      if (media != null) #media: media,
      if (favorites != null) #favorites: favorites,
      if (uploaded != null) #uploaded: uploaded,
      if (tags != null) #tags: tags,
      if (cover != null) #cover: cover,
      if (count != null) #count: count,
      if (pages != null) #pages: pages,
      if (scanlator != $none) #scanlator: scanlator,
      if (comments != $none) #comments: comments,
      if (related != $none) #related: related,
      if (favorited != $none) #favorited: favorited,
    }),
  );
  @override
  Book $make(CopyWithData data) => Book(
    title: data.get(#title, or: $value.title),
    id: data.get(#id, or: $value.id),
    media: data.get(#media, or: $value.media),
    favorites: data.get(#favorites, or: $value.favorites),
    uploaded: data.get(#uploaded, or: $value.uploaded),
    tags: data.get(#tags, or: $value.tags),
    cover: data.get(#cover, or: $value.cover),
    count: data.get(#count, or: $value.count),
    pages: data.get(#pages, or: $value.pages),
    scanlator: data.get(#scanlator, or: $value.scanlator),
    comments: data.get(#comments, or: $value.comments),
    related: data.get(#related, or: $value.related),
    favorited: data.get(#favorited, or: $value.favorited),
  );

  @override
  BookCopyWith<$R2, Book, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BookCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

