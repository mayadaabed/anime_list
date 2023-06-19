import 'package:anime_list/core/extentions/extentions.dart';
import '../../../domain/model/manga_models/pagination_model.dart';
import '../../response/manga_response/pagination_response.dart';
import 'items_mapper.dart';

extension PaginationMapper on PaginationResponse {
  PaginationModel toDomain() {
    return PaginationModel(
      lastVisiblePage: lastVisiblePage.onNull(),
      hasNextPage: hasNextPage.onNull(),
      currentPage: currentPage.onNull(),
      items: items?.toDomain(),
    );
  }
}
