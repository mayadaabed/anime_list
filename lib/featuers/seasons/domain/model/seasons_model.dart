import 'package:anime_list/featuers/seasons/domain/model/seasons_data_model.dart';
import '../../../home/domain/model/manga_models/pagination_model.dart';

class SeasonsModel {
  PaginationModel? pagination;
  List<SeasonsDataModel>? data;

  SeasonsModel({
    this.pagination,
    this.data,
  });
}
