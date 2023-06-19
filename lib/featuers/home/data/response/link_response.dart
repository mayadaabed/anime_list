import 'package:json_annotation/json_annotation.dart';
part 'link_response.g.dart';

@JsonSerializable()
class LinkResponse {
  @JsonKey(name: 'self')
  String? self;

  LinkResponse({
    this.self,
  });

  factory LinkResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkResponseFromJson(json);

  Map<String, dynamic> toJson(LinkResponse instance) =>
      _$LinkResponseToJson(this);
}
