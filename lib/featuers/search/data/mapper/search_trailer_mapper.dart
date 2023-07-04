import 'package:anime_list/core/extentions/extentions.dart';
import '../../domain/model/trailer_model.dart';
import '../response/trailer_response.dart';
import 'search_images_mapper.dart';

extension SearchTrailerMapper on TrailerResponse {
  TrailerModel toDomain() {
    return TrailerModel(
        youtubeId: youtubeId.onNull(),
        url: url.onNull(),
        embedUrl: embedUrl.onNull(),
        images: images?.toDomain());
  }
}
