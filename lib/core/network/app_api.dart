import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../config/constants.dart';
import '../../config/request_constants.dart';
import '../../featuers/home/data/response/manga_response/manga_response.dart';
import '../../featuers/home/data/response/trending_anime_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppApi {
  factory AppApi(
    Dio dio, {
    String baseUrl,
  }) = _AppApi;

  @GET(RequestConstants.trendingAnime)
  Future<TrendingAnimeResponse> trendingAnime();

  @GET(RequestConstants.manga)
  Future<MangaResponse> manga();
}
