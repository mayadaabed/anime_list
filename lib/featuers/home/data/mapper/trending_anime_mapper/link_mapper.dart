import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/response/link_response.dart';
import 'package:anime_list/featuers/home/domain/model/link_model.dart';

extension LinkMapper on LinkResponse {
  LinkModel toDomain() {
    return LinkModel(
      self: self.onNull(),
    );
  }
}
