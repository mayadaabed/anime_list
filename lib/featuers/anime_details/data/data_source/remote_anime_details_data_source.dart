import '../../../../core/network/app_api.dart';
import '../request/anime_details_request.dart';
import '../response/anime_details_response.dart';

abstract class RemoteAnimeDetailsDataSource {
  Future<AnimeDetailsResponse> animeDetails(
      AnimeDetailsRequest animeDetailsRequest);
}

class RemoteAnimeDetailsDataSourceImpl extends RemoteAnimeDetailsDataSource {
  final AppApi _appApi;

  RemoteAnimeDetailsDataSourceImpl(this._appApi);

  @override
  Future<AnimeDetailsResponse> animeDetails(
      AnimeDetailsRequest animeDetailsRequest) async {
    return await _appApi.animeDetails(animeDetailsRequest.id);
  }
}
