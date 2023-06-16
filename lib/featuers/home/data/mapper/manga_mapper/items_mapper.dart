import 'package:anime_list/core/extentions/extentions.dart';

import '../../../domain/model/manga_models/items_model.dart';
import '../../response/manga_response/items_response.dart';

extension ItemsMapper on ItemsResponse {
  ItemsModel toDomain() {
    return ItemsModel(
      count: count.onNull(),
      total: total.onNull(),
      perPage: perPage.onNull(),
    );
  }
}
