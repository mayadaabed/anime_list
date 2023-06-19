import 'package:json_annotation/json_annotation.dart';
import 'meta_response.dart';
part 'cover_image_response.g.dart';

@JsonSerializable()
class CoverImageResponse {
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

  CoverImageResponse({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
    this.meta,
  });

  factory CoverImageResponse.fromJson(Map<String, dynamic> json) =>
      _$CoverImageResponseFromJson(json);

  Map<String, dynamic> toJson(CoverImageResponse instance) =>
      _$CoverImageResponseToJson(this);
}
