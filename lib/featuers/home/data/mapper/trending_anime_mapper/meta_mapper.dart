import 'package:anime_list/featuers/home/data/response/meta_response.dart';
import 'package:anime_list/featuers/home/domain/model/meta_model.dart';
import 'dimensions_mapper.dart';

extension MetaMapper on MetaResponse {
  MetaModel toDomain() {
    return MetaModel(
      dimensions: dimensions?.toDomain(),
    );
  }
}
