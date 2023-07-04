import 'package:anime_list/featuers/search/data/response/search_images_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'trailer_response.g.dart';

@JsonSerializable()
class TrailerResponse {
  @JsonKey(name: 'youtube_id')
  String? youtubeId;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'embed_url')
  String? embedUrl;
  @JsonKey(name: 'images')
  SearchImagesResponse? images;

  TrailerResponse({
    this.youtubeId,
    this.url,
    this.embedUrl,
    this.images,
  });

  factory TrailerResponse.fromJson(Map<String, dynamic> json) =>
      _$TrailerResponseFromJson(json);

  Map<String, dynamic> toJson(TrailerResponse instance) =>
      _$TrailerResponseToJson(instance);
}
