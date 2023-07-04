import 'package:json_annotation/json_annotation.dart';
import '../../../home/data/response/manga_response/pagination_response.dart';
import 'search_data_response.dart';
part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  @JsonKey(name: 'pagination')
  PaginationResponse? pagination;
  @JsonKey(name: 'data')
  List<SearchDataResponse>? searchDataResponse;

  SearchResponse({
    this.pagination,
    this.searchDataResponse,
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson(SearchResponse instance) =>
      _$SearchResponseToJson(instance);
}
