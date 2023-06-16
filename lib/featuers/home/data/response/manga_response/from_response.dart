import 'package:json_annotation/json_annotation.dart';
part 'from_response.g.dart';

@JsonSerializable()
class FromResponse {
  @JsonKey(name: 'day')
  int? day;
  @JsonKey(name: 'month')
  int? month;
  @JsonKey(name: 'year')
  int? year;

  FromResponse({
    this.day,
    this.month,
    this.year,
  });

  factory FromResponse.fromJson(Map<String, dynamic> json) =>
      _$FromResponseFromJson(json);

  Map<String, dynamic> toJson(FromResponse instance) =>
      _$FromResponseToJson(this);
}
