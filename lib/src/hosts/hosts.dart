import 'package:meta/meta.dart';

import '../models.dart';
import 'host.dart';
import 'host_type.dart';
import 'image_host.dart';
import 'thumbnail_host.dart';


/// Hosts config.
@immutable
class Hosts {
  /// Creates a hosts config with one host of each type.
  Hosts.only({
    required ImageHost image,
    required ThumbnailHost thumbnail,
  }) : hosts = {
    HostType.image: [ image, ],
    HostType.thumbnail: [ thumbnail, ],
  };

  /// Creates a hosts config with multiple host of each type.
  Hosts.multiple({
    required List<ImageHost> image,
    required List<ThumbnailHost> thumbnail,
  }) : hosts = {
    HostType.image: image,
    HostType.thumbnail: thumbnail,
  } {
    if (image.isEmpty || thumbnail.isEmpty) {
      throw ArgumentError('Missing hosts definition.');
    }
  }

  /// Hosts map.
  final Map<HostType, List<Host>> hosts;

  /// Preferred image host.
  ImageHost get image => getHost(HostType.image) as ImageHost;
  /// Preferred thumbnail host.
  ThumbnailHost get thumbnail => getHost(HostType.thumbnail) as ThumbnailHost;

  /// Returns preferred host of given [type] from [hosts] list.
  ///
  /// Overload this function if you want to implement custom host preference.
  ///
  /// By default returns first host in a list.
  @visibleForOverriding
  Host getHost(HostType type) =>
    hosts[type]!.first;

  /// Returns preferred host of given [type].
  Host operator[](HostType type) => getHost(type);

  /// Returns [Uri] for [image].
  Uri getImageUrl(BaseImage image) => (image.isThumbnail || image.isCover
    ? thumbnail
    : this.image
  ).getUri(image.path);

  /// Returns [Uri] for [user]'s avatar.
  Uri getAvatarUrl(UserInfo user) =>
    image.getUri(user.avatar);
}
