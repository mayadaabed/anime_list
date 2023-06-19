import 'package:anime_list/core/extentions/extentions.dart';

import '../../../domain/model/manga_models/from_model.dart';
import '../../response/manga_response/from_response.dart';

extension FromMapper on FromResponse {
  FromModel toDomain() {
    return FromModel(
      day: day.onNull(),
      month: month.onNull(),
      year: year.onNull(),
    );
  }
}
