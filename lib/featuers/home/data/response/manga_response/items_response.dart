import 'package:json_annotation/json_annotation.dart';
part 'items_response.g.dart';

@JsonSerializable()
class ItemsResponse {
  @JsonKey(name: 'count')
  int? count;
  @JsonKey(name: 'total')
  int? total;
  @JsonKey(name: 'per_page')
  int? perPage;

  ItemsResponse({
    this.count,
    this.total,
    this.perPage,
  });

  factory ItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemsResponseFromJson(json);

  Map<String, dynamic> toJson(ItemsResponse instance) =>
      _$ItemsResponseToJson(this);
}
