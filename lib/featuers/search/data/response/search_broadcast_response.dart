import 'package:json_annotation/json_annotation.dart';
part 'search_broadcast_response.g.dart';

@JsonSerializable()
class SearchBroadcastResponse {
  @JsonKey(name: 'day')
  String? day;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'timezone')
  String? timezone;
  @JsonKey(name: 'string')
  String? string;

  SearchBroadcastResponse({
    this.day,
    this.time,
    this.timezone,
    this.string,
  });

  factory SearchBroadcastResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchBroadcastResponseFromJson(json);

  Map<String, dynamic> toJson(SearchBroadcastResponse instance) =>
      _$SearchBroadcastResponseToJson(instance);
}
