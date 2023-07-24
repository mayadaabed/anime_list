import '../../../../core/network/app_api.dart';
import '../response/schedules_response.dart';

abstract class RemoteSchedulesDataSource {
  Future<SchedulesResponse> schedules();
}

class RemoteSchedulesDataSourceImpl extends RemoteSchedulesDataSource {
  final AppApi _appApi;

  RemoteSchedulesDataSourceImpl(this._appApi);

  @override
  Future<SchedulesResponse> schedules() async {
    return await _appApi.schedules();
  }
}
