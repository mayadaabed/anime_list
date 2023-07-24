import 'package:anime_list/featuers/schedules/data/mapper/schedules_mapper.dart';
import '../../domain/model/schedules_model.dart';
import '../response/schedules_response.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/pagination_mapper.dart';

extension SchedulesMapper on SchedulesResponse {
  SchedulesModel toDomain() {
    return SchedulesModel(
      pagination: pagination?.toDomain(),
      data: data?.map((e) => e.toDomain()).toList(),
    );
  }
}
