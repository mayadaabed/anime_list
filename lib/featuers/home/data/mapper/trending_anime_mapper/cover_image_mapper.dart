import 'package:anime_list/featuers/home/data/response/cover_image_response.dart';
import 'package:anime_list/featuers/home/domain/model/cover_image_model.dart';
import 'package:anime_list/core/extentions/extentions.dart';
import 'meta_mapper.dart';

extension CoverImageMapper on CoverImageResponse {
  CoverImageModel toDomain() {
    return CoverImageModel(
      tiny: tiny.onNull(),
      large: large.onNull(),
      small: small.onNull(),
      medium: medium.onNull(),
      original: original.onNull(),
      meta: meta?.toDomain(),
    );
  }
}
