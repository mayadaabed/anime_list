import 'package:anime_list/featuers/home/data/response/trending_anime_response.dart';

import '../../../../core/network/app_api.dart';

abstract class RemoteTrendingAnimeDataSource {
  Future<TrendingAnimeResponse> trendingAnime();
}

class RemoteTrendingAnimeDataSourceImpl extends RemoteTrendingAnimeDataSource {
  final AppApi _appApi;

  RemoteTrendingAnimeDataSourceImpl(this._appApi);

  @override
  Future<TrendingAnimeResponse> trendingAnime() async {
    return await _appApi.trendingAnime();
  }
}
