import 'items_model.dart';

class PaginationModel {
  int? lastVisiblePage;
  bool? hasNextPage;
  int? currentPage;
  ItemsModel? items;

  PaginationModel({
    this.lastVisiblePage,
    this.hasNextPage,
    this.currentPage,
    this.items,
  });
}
