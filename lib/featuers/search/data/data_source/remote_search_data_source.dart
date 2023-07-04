import '../../../../core/network/app_api.dart';
import '../request/search_request.dart';
import '../response/search_response.dart';

abstract class RemoteSearchDataSource {
  Future<SearchResponse> search(SearchRequest searchRequest);
}

class RemoteSearchDataSourceImpl extends RemoteSearchDataSource {
  final AppApi _appApi;

  RemoteSearchDataSourceImpl(this._appApi);

  @override
  Future<SearchResponse> search(SearchRequest searchRequest) async {
    return await _appApi.search(searchRequest.name);
  }
}
