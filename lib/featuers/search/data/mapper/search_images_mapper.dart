import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/search/data/response/search_images_response.dart';

import '../../domain/model/search_images_model.dart';

extension SearchImagesMapper on SearchImagesResponse {
  SearchImagesModel toDomain() {
    return SearchImagesModel(
      imageUrl: imageUrl.onNull(),
      smallImageUrl: smallImageUrl.onNull(),
      mediumImageUrl: mediumImageUrl.onNull(),
      largeImageUrl: largeImageUrl.onNull(),
      maximumImageUrl: maximumImageUrl.onNull(),
    );
  }
}
