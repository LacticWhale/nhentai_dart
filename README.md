# Client for nhentai.net undocumented APIs

## Features

* Full model (books, images, tags, comments, users).
* Search for text query.
* Search by tag(s).
* Get random book.
* Configurable hosts.
* Support for custom `Client` (via
  [`package:http`](https://pub.dev/packages/http)).
* Out-of-box HTTP proxy support (configurable via URI).
* Out-of-box User Agent override and Cookies support.

### Notes about web usage

Using this module on web platform is experimental and has some drawbacks:

* You can't access nhentai directly due to CORS.
  * Workaround: use CORS enabled mirror (for example you can use
    [dev-mirror](https://github.com/Zekfad/dev-mirror)).
* `API#getRandomBook` doesn't work due to limitations of `XHR`.
  * Workaround: use
  [`package:fetch_client`](https://pub.dev/packages/fetch_client).
* Proxy isn't supported on web.
* User Agent override isn't supported on web.
* Cookies helper functions aren't supported on web.

## Usage

Import the package:
```dart
import 'package:nhentai/nhentai.dart';
```
Create client instance:
```dart
final api = Api.fromHttpClient(
  userAgent: 'nhentai_dart_example/1.0',
);
```

Get the data:
```dart
final search = await api.search.searchSinglePage('language:japanese');
final book = await api.books.getById(search.result.first.id, include: ['pages', 'tags']);

print('Title: ${book.title.pretty}');
print('Tags: ${book.tags.map((tag) => tag.name).join(', ')}');
print('Pages: ${book.pages.length}');
```

See more usage in the `example/` folder:

- `example/basic.dart`
- `example/hosts.dart`
- `example/auth.dart`

## License

* ISC License
