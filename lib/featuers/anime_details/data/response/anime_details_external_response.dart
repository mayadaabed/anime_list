import 'package:json_annotation/json_annotation.dart';
part 'anime_details_external_response.g.dart';

@JsonSerializable()
class AnimeDetailsExternalResponse {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'url')
  String? url;

  AnimeDetailsExternalResponse({
    this.name,
    this.url,
  });

  factory AnimeDetailsExternalResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailsExternalResponseFromJson(json);

  Map<String, dynamic> toJson(AnimeDetailsExternalResponse instance) =>
      _$AnimeDetailsExternalResponseToJson(instance);
}
