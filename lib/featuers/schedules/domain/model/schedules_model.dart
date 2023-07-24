import 'package:anime_list/featuers/schedules/domain/model/schedules_data_model.dart';

import '../../../home/domain/model/manga_models/pagination_model.dart';

class SchedulesModel {
  PaginationModel? pagination;
  List<SchedulesDataModel>? data;

  SchedulesModel({
    this.pagination,
    this.data,
  });
}