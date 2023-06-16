import 'package:json_annotation/json_annotation.dart';
part 'dimensions_details_response.g.dart';

@JsonSerializable()
class DimensionsDetailsResponse {
  @JsonKey(name: 'width')
  int? width;
  @JsonKey(name: 'height')
  int? height;

  DimensionsDetailsResponse({
    this.width,
    this.height,
  });
  
  factory DimensionsDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DimensionsDetailsResponseFromJson(json);

  Map<String, dynamic> toJson(DimensionsDetailsResponse instance) =>
      _$DimensionsDetailsResponseToJson(this);
}
