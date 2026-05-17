/// Main library exposing main [Api] client.
/// Http api client implementation [ApiHttpClient].
/// Repositories: [BookRepository], [RootRepository] and so on.
/// CDN configuration: [Hosts], [Host] and [HostType] classes
// ignore: unnecessary_library_name
library nhentai;

import 'nhentai.dart';

export 'src/api.dart';
export 'src/api/api_http_client.dart';
export 'src/api/credentials.dart';
export 'src/extensions/image_extensions.dart';
export 'src/extensions/tags_extensions.dart';
export 'src/extensions/user_extensions.dart';
export 'src/hosts.dart';
export 'src/repositories/repositories.dart';
