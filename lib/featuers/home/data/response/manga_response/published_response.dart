import 'package:json_annotation/json_annotation.dart';
import 'prop_response.dart';
part 'published_response.g.dart';

@JsonSerializable()
class PublishedResponse {
  @JsonKey(name: 'from')
  String? from;
  @JsonKey(name: 'to')
  String? to;
  @JsonKey(name: 'prop')
  PropResponse? prop;
  @JsonKey(name: 'string')
  String? string;

  PublishedResponse({
    this.from,
    this.to,
    this.prop,
    this.string,
  });

  factory PublishedResponse.fromJson(Map<String, dynamic> json) =>
      _$PublishedResponseFromJson(json);

  Map<String, dynamic> toJson(PublishedResponse instance) =>
      _$PublishedResponseToJson(this);
}
