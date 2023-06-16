import 'package:json_annotation/json_annotation.dart';
import 'data_response.dart';
part 'trending_anime_response.g.dart';

@JsonSerializable()
class TrendingAnimeResponse {
  @JsonKey(name: 'data')
  List<DataResponse>? data;

  TrendingAnimeResponse({
    this.data,
  });

  factory TrendingAnimeResponse.fromJson(Map<String, dynamic> json) =>
      _$TrendingAnimeResponseFromJson(json);

  Map<String, dynamic> toJson(TrendingAnimeResponse instance) =>
      _$TrendingAnimeResponseToJson(this);
}
