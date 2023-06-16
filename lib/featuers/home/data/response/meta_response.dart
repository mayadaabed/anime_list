import 'package:json_annotation/json_annotation.dart';
import 'dimensions_response.dart';
part 'meta_response.g.dart';

@JsonSerializable()
class MetaResponse {
  @JsonKey(name: 'dimensions')
  DimensionsResponse? dimensions;

  MetaResponse({
    this.dimensions,
  });

  factory MetaResponse.fromJson(Map<String, dynamic> json) =>
      _$MetaResponseFromJson(json);

  Map<String, dynamic> toJson(MetaResponse instance) =>
      _$MetaResponseToJson(this);
}
