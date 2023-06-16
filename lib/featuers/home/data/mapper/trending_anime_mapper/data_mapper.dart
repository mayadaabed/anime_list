import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/response/data_response.dart';
import 'package:anime_list/featuers/home/domain/model/data_model.dart';
import 'attributes_mapper.dart';
import 'link_mapper.dart';

extension DataMapper on DataResponse {
  DataModel toDomain() {
    return DataModel(
      id: id.onNull(),
      type: type.onNull(),
      links: links?.toDomain(),
      attributesResponse: attributesResponse?.toDomain(),
    );
  }
}
