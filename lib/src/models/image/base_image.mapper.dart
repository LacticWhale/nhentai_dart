// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'base_image.dart';

class BaseImageMapper extends ClassMapperBase<BaseImage> {
  BaseImageMapper._();

  static BaseImageMapper? _instance;
  static BaseImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseImageMapper._());
      ImageThumbnailMapper.ensureInitialized();
      ImageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BaseImage';

  static int _$index(BaseImage v) => v.index;
  static const Field<BaseImage, int> _f$index = Field(
    'index',
    _$index,
    key: r'number',
  );
  static String _$path(BaseImage v) => v.path;
  static const Field<BaseImage, String> _f$path = Field('path', _$path);
  static int _$width(BaseImage v) => v.width;
  static const Field<BaseImage, int> _f$width = Field('width', _$width);
  static int _$height(BaseImage v) => v.height;
  static const Field<BaseImage, int> _f$height = Field('height', _$height);

  @override
  final MappableFields<BaseImage> fields = const {
    #index: _f$index,
    #path: _f$path,
    #width: _f$width,
    #height: _f$height,
  };

  static BaseImage _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('BaseImage');
  }

  @override
  final Function instantiate = _instantiate;

  static BaseImage fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseImage>(map);
  }

  static BaseImage fromJson(String json) {
    return ensureInitialized().decodeJson<BaseImage>(json);
  }
}

mixin BaseImageMappable {
  String toJson();
  Map<String, dynamic> toMap();
  BaseImageCopyWith<BaseImage, BaseImage, BaseImage> get copyWith;
}

abstract class BaseImageCopyWith<$R, $In extends BaseImage, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? index, String? path, int? width, int? height});
  BaseImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class ImageThumbnailMapper extends ClassMapperBase<ImageThumbnail> {
  ImageThumbnailMapper._();

  static ImageThumbnailMapper? _instance;
  static ImageThumbnailMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageThumbnailMapper._());
      BaseImageMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageThumbnail';

  static String _$path(ImageThumbnail v) => v.path;
  static const Field<ImageThumbnail, String> _f$path = Field('path', _$path);
  static int _$index(ImageThumbnail v) => v.index;
  static const Field<ImageThumbnail, int> _f$index = Field(
    'index',
    _$index,
    key: r'number',
  );
  static int _$width(ImageThumbnail v) => v.width;
  static const Field<ImageThumbnail, int> _f$width = Field('width', _$width);
  static int _$height(ImageThumbnail v) => v.height;
  static const Field<ImageThumbnail, int> _f$height = Field('height', _$height);

  @override
  final MappableFields<ImageThumbnail> fields = const {
    #path: _f$path,
    #index: _f$index,
    #width: _f$width,
    #height: _f$height,
  };

  static ImageThumbnail _instantiate(DecodingData data) {
    return ImageThumbnail(
      path: data.dec(_f$path),
      index: data.dec(_f$index),
      width: data.dec(_f$width),
      height: data.dec(_f$height),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImageThumbnail fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageThumbnail>(map);
  }

  static ImageThumbnail fromJson(String json) {
    return ensureInitialized().decodeJson<ImageThumbnail>(json);
  }
}

mixin ImageThumbnailMappable {
  String toJson() {
    return ImageThumbnailMapper.ensureInitialized().encodeJson<ImageThumbnail>(
      this as ImageThumbnail,
    );
  }

  Map<String, dynamic> toMap() {
    return ImageThumbnailMapper.ensureInitialized().encodeMap<ImageThumbnail>(
      this as ImageThumbnail,
    );
  }

  ImageThumbnailCopyWith<ImageThumbnail, ImageThumbnail, ImageThumbnail>
  get copyWith => _ImageThumbnailCopyWithImpl<ImageThumbnail, ImageThumbnail>(
    this as ImageThumbnail,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ImageThumbnailMapper.ensureInitialized().stringifyValue(
      this as ImageThumbnail,
    );
  }
}

extension ImageThumbnailValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageThumbnail, $Out> {
  ImageThumbnailCopyWith<$R, ImageThumbnail, $Out> get $asImageThumbnail =>
      $base.as((v, t, t2) => _ImageThumbnailCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageThumbnailCopyWith<$R, $In extends ImageThumbnail, $Out>
    implements BaseImageCopyWith<$R, $In, $Out> {
  @override
  $R call({String? path, int? index, int? width, int? height});
  ImageThumbnailCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ImageThumbnailCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageThumbnail, $Out>
    implements ImageThumbnailCopyWith<$R, ImageThumbnail, $Out> {
  _ImageThumbnailCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageThumbnail> $mapper =
      ImageThumbnailMapper.ensureInitialized();
  @override
  $R call({String? path, int? index, int? width, int? height}) => $apply(
    FieldCopyWithData({
      if (path != null) #path: path,
      if (index != null) #index: index,
      if (width != null) #width: width,
      if (height != null) #height: height,
    }),
  );
  @override
  ImageThumbnail $make(CopyWithData data) => ImageThumbnail(
    path: data.get(#path, or: $value.path),
    index: data.get(#index, or: $value.index),
    width: data.get(#width, or: $value.width),
    height: data.get(#height, or: $value.height),
  );

  @override
  ImageThumbnailCopyWith<$R2, ImageThumbnail, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImageThumbnailCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ImageMapper extends ClassMapperBase<Image> {
  ImageMapper._();

  static ImageMapper? _instance;
  static ImageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageMapper._());
      BaseImageMapper.ensureInitialized();
      ImageThumbnailMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Image';

  static ImageThumbnail _$thumbnail(Image v) => v.thumbnail;
  static const Field<Image, ImageThumbnail> _f$thumbnail = Field(
    'thumbnail',
    _$thumbnail,
  );
  static String _$path(Image v) => v.path;
  static const Field<Image, String> _f$path = Field('path', _$path);
  static int _$index(Image v) => v.index;
  static const Field<Image, int> _f$index = Field(
    'index',
    _$index,
    key: r'number',
  );
  static int _$width(Image v) => v.width;
  static const Field<Image, int> _f$width = Field('width', _$width);
  static int _$height(Image v) => v.height;
  static const Field<Image, int> _f$height = Field('height', _$height);

  @override
  final MappableFields<Image> fields = const {
    #thumbnail: _f$thumbnail,
    #path: _f$path,
    #index: _f$index,
    #width: _f$width,
    #height: _f$height,
  };

  static Image _instantiate(DecodingData data) {
    return Image(
      thumbnail: data.dec(_f$thumbnail),
      path: data.dec(_f$path),
      index: data.dec(_f$index),
      width: data.dec(_f$width),
      height: data.dec(_f$height),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Image fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Image>(map);
  }

  static Image fromJson(String json) {
    return ensureInitialized().decodeJson<Image>(json);
  }
}

mixin ImageMappable {
  String toJson() {
    return ImageMapper.ensureInitialized().encodeJson<Image>(this as Image);
  }

  Map<String, dynamic> toMap() {
    return ImageMapper.ensureInitialized().encodeMap<Image>(this as Image);
  }

  ImageCopyWith<Image, Image, Image> get copyWith =>
      _ImageCopyWithImpl<Image, Image>(this as Image, $identity, $identity);
  @override
  String toString() {
    return ImageMapper.ensureInitialized().stringifyValue(this as Image);
  }
}

extension ImageValueCopy<$R, $Out> on ObjectCopyWith<$R, Image, $Out> {
  ImageCopyWith<$R, Image, $Out> get $asImage =>
      $base.as((v, t, t2) => _ImageCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageCopyWith<$R, $In extends Image, $Out>
    implements BaseImageCopyWith<$R, $In, $Out> {
  ImageThumbnailCopyWith<$R, ImageThumbnail, ImageThumbnail> get thumbnail;
  @override
  $R call({
    ImageThumbnail? thumbnail,
    String? path,
    int? index,
    int? width,
    int? height,
  });
  ImageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Image, $Out>
    implements ImageCopyWith<$R, Image, $Out> {
  _ImageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Image> $mapper = ImageMapper.ensureInitialized();
  @override
  ImageThumbnailCopyWith<$R, ImageThumbnail, ImageThumbnail> get thumbnail =>
      $value.thumbnail.copyWith.$chain((v) => call(thumbnail: v));
  @override
  $R call({
    ImageThumbnail? thumbnail,
    String? path,
    int? index,
    int? width,
    int? height,
  }) => $apply(
    FieldCopyWithData({
      if (thumbnail != null) #thumbnail: thumbnail,
      if (path != null) #path: path,
      if (index != null) #index: index,
      if (width != null) #width: width,
      if (height != null) #height: height,
    }),
  );
  @override
  Image $make(CopyWithData data) => Image(
    thumbnail: data.get(#thumbnail, or: $value.thumbnail),
    path: data.get(#path, or: $value.path),
    index: data.get(#index, or: $value.index),
    width: data.get(#width, or: $value.width),
    height: data.get(#height, or: $value.height),
  );

  @override
  ImageCopyWith<$R2, Image, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ImageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

