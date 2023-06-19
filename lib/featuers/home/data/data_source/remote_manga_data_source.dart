import '../../../../core/network/app_api.dart';
import '../response/manga_response/manga_response.dart';

abstract class RemoteMangaDataSource {
  Future<MangaResponse> manga();
}

class RemoteMangaDataSourceImpl extends RemoteMangaDataSource {
  final AppApi _appApi;

  RemoteMangaDataSourceImpl(this._appApi);

  @override
  Future<MangaResponse> manga() async {
    return await _appApi.manga();
  }
}
