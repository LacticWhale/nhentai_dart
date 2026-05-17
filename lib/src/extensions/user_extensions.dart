import '../hosts.dart';
import '../models.dart';


/// User extension collection.
extension UserExtensions on UserInfo {
  /// Returns avatar url depending on hosts configuration.
  Uri getAvatarUrl(Hosts hosts) => hosts.getAvatarUrl(this);
}
