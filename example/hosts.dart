import 'package:http/http.dart' as http;
import 'package:nhentai/data_model.dart';
import 'package:nhentai/nhentai.dart';

Future<void> main() async {
  initializeMappers();

  final client = http.Client();
  final api = Api.fromHttpClient(
    userAgent: 'nhentai_dart_example/1.0',
    httpClient: client,
  );

  try {
    final search = await api.search.searchSinglePage('english');
    if (search.result.isEmpty) {
      print('No galleries found for query.');
      return;
    }

    final book = await api.books.getById(
      search.result.first.id,
      include: ['pages'],
    );

    final hosts = await api.root.getConfig();
    print('Configured image hosts: ${hosts.hosts[HostType.image]?.length ?? 0}');
    print('Configured thumbnail hosts: ${hosts.hosts[HostType.thumbnail]?.length ?? 0}');

    final coverUrl = hosts.getImageUrl(book.cover);
    final coverThumbnailUrl = hosts.getImageUrl(book.cover.thumbnail);
    final firstPageUrl = hosts.getImageUrl(book.pages.first);
    final thumbnailUrl = hosts.getImageUrl(book.pages.first.thumbnail);

    print('\nGallery: ${book.title.pretty}');
    print('Cover URL: $coverUrl');
    print('Cover thumbnail URL: $coverThumbnailUrl');
    print('First page URL: $firstPageUrl');
    print('First page thumbnail URL: $thumbnailUrl');
  } finally {
    client.close();
  }
}
