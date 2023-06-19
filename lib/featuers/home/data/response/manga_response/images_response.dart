import 'package:json_annotation/json_annotation.dart';
import 'jpg_response.dart';

part 'images_response.g.dart';

@JsonSerializable()
class ImagesResponse {
  @JsonKey(name: 'jpg')
  JpgResponse? jpg;
  @JsonKey(name: 'webp')
  JpgResponse? webp;

  ImagesResponse({
    this.jpg,
    this.webp,
  });

  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);

  Map<String, dynamic> toJson(ImagesResponse instance) =>
      _$ImagesResponseToJson(this);
}
