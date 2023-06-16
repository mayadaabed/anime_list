import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/response/dimensions_details_response.dart';
import 'package:anime_list/featuers/home/domain/model/dimensions_details_model.dart';

extension DimensionsDetailsMapper on DimensionsDetailsResponse {
  DimensionsDetailsModel toDomain() {
    return DimensionsDetailsModel(
      width: width.onNull(),
      height: height.onNull(),
    );
  }
}
