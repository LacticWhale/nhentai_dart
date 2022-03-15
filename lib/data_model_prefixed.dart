/// Prefixed data model library.
/// It contains data models for API objects, such as [NHentaiBook]s,
/// [NHentaiTag]s, [NHentaiImage]s, [NHentaiSearch] response bodies and so on.
library nhentai_data_model_prefixed;

import 'data_model.dart';

/// [Book] alias.
typedef NHentaiBook = Book;
/// [BookTitle] alias.
typedef NHentaiBookTitle = BookTitle;
/// [Image] alias.
typedef NHentaiImage = Image;
/// [Tag] alias.
typedef NHentaiTag = Tag;
/// [TagType] alias.
typedef NHentaiTagType = TagType;
/// [Search] alias.
typedef NHentaiSearch = Search;
/// [SearchSort] alias.
typedef NHentaiSearchSort = SearchSort;
/// [APIException] alias.
typedef NHentaiException = APIException;
