import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../config/constants.dart';
import '../../config/request_constants.dart';
import '../../featuers/anime_details/data/response/anime_details_response.dart';
import '../../featuers/home/data/response/manga_response/manga_response.dart';
import '../../featuers/home/data/response/trending_anime_response.dart';
import '../../featuers/schedules/data/response/schedules_response.dart';
import '../../featuers/search/data/response/search_response.dart';
import '../../featuers/seasons/data/response/seasons_response.dart';

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

  @GET(RequestConstants.search)
  Future<SearchResponse> search(
    @Query('q') String? query,
  );

  @GET(RequestConstants.animeDetails)
  Future<AnimeDetailsResponse> animeDetails(
    @Path('id') int id,
  );

  @GET(RequestConstants.schedules)
  Future<SchedulesResponse> schedules();

  @GET(RequestConstants.seasons)
  Future<SeasonsResponse> seasons();

}
