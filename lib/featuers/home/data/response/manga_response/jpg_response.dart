import 'package:json_annotation/json_annotation.dart';

part 'jpg_response.g.dart';

@JsonSerializable()
class JpgResponse {
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'small_image_url')
  String? smallImageUrl;
  @JsonKey(name: 'large_image_url')
  String? largeImageUrl;

  JpgResponse({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  factory JpgResponse.fromJson(Map<String, dynamic> json) =>
      _$JpgResponseFromJson(json);

  Map<String, dynamic> toJson(JpgResponse instance) =>
      _$JpgResponseToJson(this);
}
