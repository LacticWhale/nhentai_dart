// // test/nhentai_api_test.dart
// import 'dart:convert';
// import 'package:nhentai/src/models/gallery/gallery_detail_response.dart';
// import 'package:nhentai/src/models/gallery/gallery_list_item.dart';
// import 'package:nhentai/src/repositories/gallery_repository.dart';
// import 'package:test/test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:http/http.dart' as http;
// import 'package:nhentai/nhentai.dart'; // adjust path to your file

// // ----------------------------------------------------------------------
// // Mocks
// // ----------------------------------------------------------------------

// class MockHttpClient extends Mock implements http.Client {}

// class MockStreamedResponse extends Mock implements http.StreamedResponse {}

// // ----------------------------------------------------------------------
// // Unit tests for ApiClient
// // ----------------------------------------------------------------------

// void main() {
//   initializeMappers();

//   group('ApiClient', () {
//     late MockHttpClient mockHttpClient;
//     late ApiClient client;

//     setUp(() {
//       mockHttpClient = MockHttpClient();
//       client = ApiClient(client: mockHttpClient);
//       registerFallbackValue(http.Request('GET', Uri.parse('http://url')));
//     });

//     tearDown(() {
//       reset(mockHttpClient);
//     });

//     // Helper to create a fake successful response
//     void stubSuccessfulResponse(dynamic jsonBody) {
//       when(() => mockHttpClient.send(any())).thenAnswer((invocation) async {
//         final request = invocation.positionalArguments[0] as http.BaseRequest;
//         final response = http.StreamedResponse(
//           Stream.value(utf8.encode(jsonEncode(jsonBody))),
//           200,
//           headers: {'content-type': 'application/json'},
//           request: request,
//         );
//         return response;
//       });
//     }

//     // Helper to create an error response
//     void stubErrorResponse(int statusCode, {dynamic errorBody}) {
//       final body = errorBody != null ? jsonEncode(errorBody) : '';
//       when(() => mockHttpClient.send(any())).thenAnswer((invocation) async {
//         final request = invocation.positionalArguments[0] as http.BaseRequest;
//         final response = http.StreamedResponse(
//           Stream.value(utf8.encode(body)),
//           statusCode,
//           headers: {'content-type': 'application/json'},
//           request: request,
//         );
//         return response;
//       });
//     }

//     test('GET request returns parsed JSON', () async {
//       stubSuccessfulResponse({'id': 123, 'name': 'test'});
//       final json = await client.getJson('/test');
//       expect(json, {'id': 123, 'name': 'test'});
//     });

//     test('GET request adds auth header when user token set', () async {
//       client.setUserToken('test-token');
//       stubSuccessfulResponse({});
//       await client.getJson('/test');
//       when(() => mockHttpClient.send(captureAny())).thenAnswer((invocation) async {
//         final request = invocation.positionalArguments[0] as http.BaseRequest;
//         expect(request.headers['Authorization'], 'User test-token');
//         return http.StreamedResponse(const Stream.empty(), 200);
//       });
//     });

//     test('GET request adds auth header when API key set', () async {
//       client.setApiKey('test-key');
//       stubSuccessfulResponse({});
//       await client.getJson('/test');
//       when(() => mockHttpClient.send(captureAny())).thenAnswer((invocation) async {
//         final request = invocation.positionalArguments[0] as http.BaseRequest;
//         expect(request.headers['Authorization'], 'Key test-key');
//         return http.StreamedResponse(const Stream.empty(), 200);
//       });
//     });

//     test('beforeRequest callback is called', () async {
//       var called = false;
//       client.beforeRequest = (request) {
//         called = true;
//         request.headers['X-Test'] = 'value';
//       };
//       stubSuccessfulResponse({});
//       await client.getJson('/test');
//       expect(called, true);
//     });

//     test('throws ApiClientException on non-JSON response', () async {
//       when(() => mockHttpClient.send(any())).thenAnswer((invocation) async {
//         final request = invocation.positionalArguments[0] as http.BaseRequest;
//         return http.StreamedResponse(
//           Stream.value(utf8.encode('not json')),
//           200,
//           request: request,
//         );
//       });
//       expect(() => client.getJson('/test'), throwsA(isA<ApiClientException>()));
//     });

//     test('throws ApiException when response contains error string', () async {
//       stubErrorResponse(400, errorBody: {'error': 'Bad request'});
//       expect(() => client.getJson('/test'), throwsA(predicate((e) => e is ApiException && e.message == 'Bad request')));
//     });

//     test('throws ApiException when response contains error true', () async {
//       stubErrorResponse(403, errorBody: {'error': true});
//       expect(() => client.getJson('/test'), throwsA(predicate((e) => e is ApiException && e.message == 'Generic API error')));
//     });

//     test('throws ApiException on non-2xx without error field', () async {
//       stubErrorResponse(500);
//       expect(() => client.getJson('/test'), throwsA(isA<ApiException>()));
//     });

//     test('getModel maps JSON to Dart object', () async {
//       stubSuccessfulResponse({'id': 1, 'username': 'alice', 'slug': 'alice', 'avatar_url': 'http://example.com/avatar.png'});
//       final user = await client.getModel<UserPublic>('/user/1');
//       expect(user.id, 1);
//       expect(user.username, 'alice');
//     });

//     test('postModel sends body and maps response', () async {
//       stubSuccessfulResponse({'id': 2});
//       final result = await client.postModel<Map<String, dynamic>>('/create', body: {'name': 'test'});
//       expect(result['id'], 2);
//       when(() => mockHttpClient.send(any())).thenAnswer((invocation) async {
//         final request = invocation.positionalArguments[0] as http.Request;
//         expect(request.method, 'POST');
//         expect(request.body, jsonEncode({'name': 'test'}));
//         return http.StreamedResponse(const Stream.empty(), 200);
//       });
//     });

//     test('deleteModel does not throw on success', () async {
//       stubSuccessfulResponse({});
//       await expectLater(client.deleteModel('/delete'), completes);
//     });
//   });

//   // ----------------------------------------------------------------------
//   // Repository tests using a fake http.Client that returns canned responses
//   // ----------------------------------------------------------------------
//   group('GalleryRepository', () {
//     late ApiClient client;
//     late GalleryRepository repository;

//     setUp(() {
//       client = ApiClient(client: _FakeHttpClient());
//       repository = GalleryRepository(client);
//     });

//     test('getAllGalleries returns PaginatedResponse', () async {
//       final result = await repository.getAll(page: 1, perPage: 10);
//       expect(result.result, isNotEmpty);
//       expect(result.numPages, greaterThan(0));
//       expect(result.result.first, isA<GalleryListItem>());
//     });

//     test('getGallery returns GalleryDetailResponse', () async {
//       final gallery = await repository.get(1);
//       expect(gallery.id, 1);
//       expect(gallery.title.english, isNotEmpty);
//     });

//     test('addToFavorites returns FavoriteResponse', () async {
//       final fav = await repository.addToFavorites(1);
//       expect(fav.favorited, true);
//     });
//   });

//   // Uncomment and run locally to test against live API

//   group('Live API tests', () {
//     final client = Api();

//     test('GET /api/v2/galleries/1 returns a gallery', () async {
//       final gallery = await client.galleries.getGallery(1);
//       expect(gallery, isA<GalleryDetailResponse>());
//       expect(gallery.id, 1);
//     });

//     test('GET random', () async {
//       final id = await client.galleries.getRandomId();

//       expect(id, isPositive);
//     });
//   });
// }

// /// A fake HTTP client that returns predefined JSON responses based on the request URL.
// class _FakeHttpClient extends http.BaseClient {
//   @override
//   Future<http.StreamedResponse> send(http.BaseRequest request) async {
//     final uri = request.url.toString();
//     dynamic responseBody;
//     int statusCode = 200;

//     // Simulate gallery detail
//     if (uri.contains('/api/v2/galleries/1') && !uri.contains('/favorite') && !uri.contains('/related')) {
//       responseBody = {
//         'id': 1,
//         'media_id': 21,
//         'title': {'english': 'Test', 'pretty': 'Test'},
//         'cover': {'path': '/cover.jpg', 'width': 800, 'height': 600},
//         'thumbnail': {'path': '/thumb.jpg', 'width': 200, 'height': 300},
//         'upload_date': 1234567890,
//         'tags': [],
//         'num_pages': 10,
//         'num_favorites': 5,
//       };
//     }
//     // Simulate add to favorites
//     else if (uri.contains('/favorite') && request.method == 'POST') {
//       responseBody = {'favorited': true, 'num_favorites': 6};
//     }
//     // Simulate gallery list response
//     else if (uri.contains('/api/v2/galleries') && request.method == 'GET') {
//       responseBody = {
//         'result': [
//           {
//             'id': 1,
//             'media_id': 'media1',
//             'english_title': 'Test Gallery',
//             'thumbnail': '/thumb/1.jpg',
//             'thumbnail_width': 200,
//             'thumbnail_height': 300,
//             'num_pages': 10,
//             'tag_ids': [1, 2],
//           }
//         ],
//         'num_pages': 1,
//         'per_page': 25,
//         'total': 1,
//       };
//     }
//     // Default empty response
//     else {
//       responseBody = {};
//     }

//     final bytes = utf8.encode(jsonEncode(responseBody));
//     final stream = Stream.value(bytes);
//     return http.StreamedResponse(stream, statusCode, contentLength: bytes.length);
//   }
// }
