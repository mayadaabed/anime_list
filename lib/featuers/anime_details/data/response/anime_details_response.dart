import 'package:json_annotation/json_annotation.dart';
import 'anime_details_data_response.dart';
part 'anime_details_response.g.dart';

@JsonSerializable()
class AnimeDetailsResponse {
  @JsonKey(name: 'data')
  AnimeDetailsDataResponse? data;

  AnimeDetailsResponse({
    this.data,
  });

  factory AnimeDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailsResponseFromJson(json);

  Map<String, dynamic> toJson(AnimeDetailsResponse instance) =>
      _$AnimeDetailsResponseToJson(instance);
}
