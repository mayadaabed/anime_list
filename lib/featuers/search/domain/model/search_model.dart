import 'package:anime_list/featuers/search/domain/model/search_data_model.dart';
import '../../../home/domain/model/manga_models/pagination_model.dart';

class SearchModel {
  PaginationModel? pagination;
  List<SearchDataModel>? data;

  SearchModel({
    this.pagination,
    this.data,
  });
}
