import 'package:anime_list/featuers/schedules/data/response/schedules_data_response.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../home/data/response/manga_response/pagination_response.dart';
part 'schedules_response.g.dart';

@JsonSerializable()
class SchedulesResponse {
  @JsonKey(name: 'pagination')
  PaginationResponse? pagination;
  @JsonKey(name: 'data')
  List<SchedulesDataResponse>? data;

  SchedulesResponse({
    this.pagination,
    this.data,
  });

  factory SchedulesResponse.fromJson(Map<String, dynamic> json) =>
      _$SchedulesResponseFromJson(json);

  Map<String, dynamic> toJson(SchedulesResponse instance) =>
      _$SchedulesResponseToJson(instance);
}
