import 'manga_data_model.dart';
import 'pagination_model.dart';

class MangaModel {
  PaginationModel? pagination;
  List<MangaDataModel>? data;

  MangaModel({
    this.pagination,
    this.data,
  });
}
