import 'package:dart_mappable/dart_mappable.dart';

part 'paginated.mapper.dart';


/// Represents api response with paginated result.
@MappableClass()
class const Paginated<T>({
    required this.result,
    required this.count,
    this.limit = 25,
    this.total,
  }) with PaginatedMappable<T> {
  /// Paginated.
  this;

  /// List of items on the current page.
  @MappableField(key: 'result')
  final List<T> result;

  /// Total number of pages available.
  @MappableField(key: 'num_pages')
  final int count;

  /// Number of items per page.
  @MappableField(key: 'per_page')
  final int limit;

  /// Total number of items across all pages (may be null).
  @MappableField(key: 'total')
  final int? total;
}
