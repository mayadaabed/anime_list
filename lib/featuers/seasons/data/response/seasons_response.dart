import 'package:anime_list/featuers/seasons/data/response/seasons_data_response.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../home/data/response/manga_response/pagination_response.dart';

part 'seasons_response.g.dart';

@JsonSerializable()
class SeasonsResponse {
  @JsonKey(name: 'pagination')
  PaginationResponse? pagination;
  @JsonKey(name: 'data')
  List<SeasonsDataResponse>? data;

  SeasonsResponse({
    this.pagination,
    this.data,
  });

  factory SeasonsResponse.fromJson(Map<String, dynamic> json) =>
      _$SeasonsResponseFromJson(json);

  Map<String, dynamic> toJson(SeasonsResponse instance) =>
      _$SeasonsResponseToJson(instance);
}
