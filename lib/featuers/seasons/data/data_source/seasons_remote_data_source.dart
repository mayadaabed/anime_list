import '../../../../core/network/app_api.dart';
import '../response/seasons_response.dart';

abstract class RemoteSeasonsDataSource {
  Future<SeasonsResponse> seasons();
}

class RemoteSeasonsDataSourceImpl extends RemoteSeasonsDataSource {
  final AppApi _appApi;

  RemoteSeasonsDataSourceImpl(this._appApi);

  @override
  Future<SeasonsResponse> seasons() async {
    return await _appApi.seasons();
  }
}
