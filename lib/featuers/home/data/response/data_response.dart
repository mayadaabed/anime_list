import 'package:anime_list/featuers/home/data/response/attributes_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'link_response.dart';
part 'data_response.g.dart';

@JsonSerializable()
class DataResponse {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'links')
  LinkResponse? links;
  @JsonKey(name: 'attributes')
  AttributesResponse? attributesResponse;

  DataResponse({
    this.id,
    this.type,
    this.links,
    this.attributesResponse,
  });

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);

  Map<String, dynamic> toJson(DataResponse instance) =>
      _$DataResponseToJson(this);
}
