import 'package:json_annotation/json_annotation.dart';
part 'search_images_response.g.dart';

@JsonSerializable()
class SearchImagesResponse {
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'small_image_url')
  String? smallImageUrl;
  @JsonKey(name: 'medium_image_url')
  String? mediumImageUrl;
  @JsonKey(name: 'large_image_url')
  String? largeImageUrl;
  @JsonKey(name: 'maximum_image_url')
  String? maximumImageUrl;

  SearchImagesResponse({
    this.imageUrl,
    this.smallImageUrl,
    this.mediumImageUrl,
    this.largeImageUrl,
    this.maximumImageUrl,
  });

  factory SearchImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchImagesResponseFromJson(json);

  Map<String, dynamic> toJson(SearchImagesResponse instance) =>
      _$SearchImagesResponseToJson(instance);
}
