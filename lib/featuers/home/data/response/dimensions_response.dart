import 'package:anime_list/featuers/home/data/response/dimensions_details_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'dimensions_response.g.dart';

@JsonSerializable()
class DimensionsResponse {
  @JsonKey(name: 'tiny')
  DimensionsDetailsResponse? tiny;
  @JsonKey(name: 'large')
  DimensionsDetailsResponse? large;
  @JsonKey(name: 'small')
  DimensionsDetailsResponse? small;
  @JsonKey(name: 'medium')
  DimensionsDetailsResponse? medium;

  DimensionsResponse({
    this.tiny,
    this.large,
    this.small,
    this.medium,
  });

  factory DimensionsResponse.fromJson(Map<String, dynamic> json) =>
      _$DimensionsResponseFromJson(json);

  Map<String, dynamic> toJson(DimensionsResponse instance) =>
      _$DimensionsResponseToJson(this);
}
