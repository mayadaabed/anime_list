import 'package:anime_list/featuers/home/data/response/trending_anime_response.dart';
import 'package:anime_list/featuers/home/domain/model/trending_anime_model.dart';
import 'data_mapper.dart';

extension TrendingAnimeMapper on TrendingAnimeResponse {
  TrendingAnimeModel toDomain() {
    return TrendingAnimeModel(
      data: data?.map((e) => e.toDomain()).toList(),
    );
  }
}
