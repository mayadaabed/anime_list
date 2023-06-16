import 'package:anime_list/featuers/home/data/response/poster_image_response.dart';
import 'package:anime_list/featuers/home/domain/model/poster_image_model.dart';
import 'package:anime_list/core/extentions/extentions.dart';
import 'meta_mapper.dart';

extension PosterImageMapper on PosterImageResponse {
  PosterImageModel toDomain() {
    return PosterImageModel(
      tiny: tiny.onNull(),
      large: large.onNull(),
      small: small.onNull(),
      medium: medium.onNull(),
      original: original.onNull(),
      meta: meta?.toDomain(),
    );
  }
}
