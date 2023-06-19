import 'package:anime_list/featuers/home/data/response/manga_response/pagination_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'manga_data_response.dart';
part 'manga_response.g.dart';

@JsonSerializable()
class MangaResponse {
  @JsonKey(name: 'pagination')
  PaginationResponse? pagination;
  @JsonKey(name: 'data')
  List<MangaDataResponse>? data;

  MangaResponse({
    this.pagination,
    this.data,
  });

  factory MangaResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaResponseFromJson(json);

  Map<String, dynamic> toJson(MangaResponse instance) =>
      _$MangaResponseToJson(this);
}
