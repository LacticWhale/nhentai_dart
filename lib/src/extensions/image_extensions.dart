import '../hosts.dart';
import '../models.dart';


/// Image extension collection.
extension ImageExtensions on BaseImage {
  /// Returns image url depending on hosts configuration.
  Uri getUrl(Hosts hosts) => hosts.getImageUrl(this);
}
