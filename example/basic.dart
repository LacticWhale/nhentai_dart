import 'package:http/http.dart' as http;
import 'package:nhentai/data_model.dart';
import 'package:nhentai/nhentai.dart';

Future<void> main() async {
  initializeMappers();

  final client = http.Client();
  final api = Api.fromHttpClient(
    userAgent: 'nhentai_dart_example/1.0',
    httpClient: client,
    beforeRequest: (request) {
      print('HTTP ${request.method} ${request.url}');
    },
  );

  try {
    final search = await api.search.searchSinglePage('language:japanese');
    print('Found ${search.total ?? search.result.length} galleries');
    print('Showing first ${search.result.length < 5 ? search.result.length : 5} results:');

    for (final preview in search.result.take(5)) {
      print(' - [${preview.id}] ${preview.title.pretty} (${preview.count} pages)');
    }

    if (search.result.isEmpty) {
      print('No galleries found for the search query.');
      return;
    }

    final galleryId = search.result.first.id;
    final book = await api.books.getById(
      galleryId,
      include: ['pages', 'tags'],
    );

    print('\nBook details for ID $galleryId:');
    print('Title: ${book.title.pretty}');
    print('Uploaded: ${book.uploaded}');
    print('Tags: ${book.tags.map((tag) => tag.name).join(', ')}');
    print('Cover path: ${book.cover.path}');
    print('Page count: ${book.pages.length}');
    print('First page path: ${book.pages.first.path}');
  } finally {
    client.close();
  }
}
