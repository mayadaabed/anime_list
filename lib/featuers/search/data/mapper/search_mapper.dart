import 'package:anime_list/featuers/home/data/mapper/manga_mapper/pagination_mapper.dart';
import '../../domain/model/search_model.dart';
import '../response/search_response.dart';
import 'search_data_mapper.dart';

extension SearchMapper on SearchResponse {
  SearchModel toDomain() {
    return SearchModel(
      pagination: pagination?.toDomain(),
      data: searchDataResponse?.map((e) => e.toDomain()).toList(),
    );
  }
}
