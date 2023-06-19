import 'package:json_annotation/json_annotation.dart';
import 'meta_response.dart';
part 'poster_image_response.g.dart';

@JsonSerializable()
class PosterImageResponse {
  @JsonKey(name: 'tiny')
  String? tiny;
  @JsonKey(name: 'large')
  String? large;
  @JsonKey(name: 'small')
  String? small;
  @JsonKey(name: 'medium')
  String? medium;
  @JsonKey(name: 'original')
  String? original;
  @JsonKey(name: 'meta')
  MetaResponse? meta;

  PosterImageResponse({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
    this.meta,
  });

  factory PosterImageResponse.fromJson(Map<String, dynamic> json) =>
      _$PosterImageResponseFromJson(json);

  Map<String, dynamic> toJson(PosterImageResponse instance) =>
      _$PosterImageResponseToJson(this);
}
