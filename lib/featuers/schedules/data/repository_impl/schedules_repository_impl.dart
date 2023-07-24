import 'package:anime_list/featuers/schedules/data/mapper/schedules_data_mapper.dart';
import 'package:dartz/dartz.dart';
import '../../../../config/constants.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../domain/model/schedules_model.dart';
import '../../domain/repository/schedules_repository.dart';
import '../data_source/schedules_remote_data_source.dart';

class SchedulesRepoImplementation implements SchedulesRepository {
  final RemoteSchedulesDataSource _dataSource;
  final NetworkInfo networkInfo;

  SchedulesRepoImplementation(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failer, SchedulesModel>> schedules() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.schedules();
        return Right(response.toDomain());
      } catch (e) {
        return Left(
          ErrorHandler.handle(e).failer,
        );
      }
    } else {
      return Left(Failer(ResponseCode.NO_INTERNET_CONNECTION.value,
          ApiConstants.noInternetConnection));
    }
  }
}
