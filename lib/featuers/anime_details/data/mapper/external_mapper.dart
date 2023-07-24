import 'package:anime_list/core/extentions/extentions.dart';

import '../../domain/model/anime_details_external_model.dart';
import '../response/anime_details_external_response.dart';

extension ExternalMapper on AnimeDetailsExternalResponse {
  AnimeDetailsExternalModel toDomain() {
    return AnimeDetailsExternalModel(
      name: name.onNull(),
      url: url.onNull(),
    );
  }
}
