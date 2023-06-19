import 'package:anime_list/core/extentions/extentions.dart';

import '../../../domain/model/manga_models/jpg_model.dart';
import '../../response/manga_response/jpg_response.dart';

extension JpgMapper on JpgResponse {
  JpgModel toDomain() {
    return JpgModel(
      imageUrl: imageUrl.onNull(),
      smallImageUrl: smallImageUrl.onNull(),
      largeImageUrl: largeImageUrl.onNull(),
    );
  }
}
