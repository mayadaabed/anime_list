import 'package:anime_list/featuers/home/data/response/dimensions_response.dart';
import 'package:anime_list/featuers/home/domain/model/dimensions_model.dart';
import 'dimensions_details_mapper.dart';

extension DimensionsMapper on DimensionsResponse {
  DimensionsModel toDomain() {
    return DimensionsModel(
      tiny: tiny?.toDomain(),
      large: large?.toDomain(),
      small: small?.toDomain(),
      medium: medium?.toDomain(),
    );
  }
}
