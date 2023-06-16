import 'package:json_annotation/json_annotation.dart';
import 'from_response.dart';
part 'prop_response.g.dart';

@JsonSerializable()
class PropResponse {
  @JsonKey(name: 'from')
  FromResponse? from;
  @JsonKey(name: 'to')
  FromResponse? to;

  PropResponse({
    this.from,
    this.to,
  });

  factory PropResponse.fromJson(Map<String, dynamic> json) =>
      _$PropResponseFromJson(json);

  Map<String, dynamic> toJson(PropResponse instance) =>
      _$PropResponseToJson(this);
}
