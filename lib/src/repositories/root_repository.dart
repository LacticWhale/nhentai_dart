import '../api/api_http_client.dart';
import '../hosts.dart';
import '../models/api.dart';


/// Collection of api methods related to root api operations.
class RootRepository {
  /// Creates a root repository with the given API client.
  const RootRepository(this._client);

  final ApiHttpClient _client;

  /// Retrieve API version info.
  Future<ApiInfo> getInfo() => _client.getModel('/api/v2/version');

  /// Retrieve CDN config.
  Future<Hosts> getConfig() async {
    final newVariable = await _client.getJson('/api/v2/config');
    print(newVariable);
    return switch (newVariable) {
      {
      'image_servers': final List<dynamic> imageServers,
      'thumb_servers': final List<dynamic> thumbServers,
    } =>
        SelectedHosts(
          image: imageServers
            .whereType<String>()
            .map(Uri.parse)
            .map((url) => ImageHost(url.authority, url.isScheme('https')))
            .toList(),
          thumbnail: thumbServers
            .whereType<String>()
            .map(Uri.parse)
            .map((url) => ThumbnailHost(url.authority, url.isScheme('https')))
            .toList(),
        ),
    _ => throw const ApiClientException('Unable to obtain/parse config'),
    };
  }

  /// Returns hashcash like proof of work.
  Future<ProofOfWork> getPowChallenge(String action) => _client
    .getModel('/api/v2/pow',
      queryParameters: {
        'action': action,
      }
    );

  /// Returns captcha provider info for front-end widget.
  Future<CaptchaInfo> getCaptcha() => _client
    .getModel('/api/v2/captcha');
}
