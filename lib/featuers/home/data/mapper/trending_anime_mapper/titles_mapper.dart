import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/response/titles_response.dart';
import 'package:anime_list/featuers/home/domain/model/titles_model.dart';

extension TitlesMapper on TitlesResponse {
  TitlesModel toDomain() {
    return TitlesModel(
      en: en.onNull(),
      enJp: enJp.onNull(),
      jaJp: jaJp.onNull(),
    );
  }
}
