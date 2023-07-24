import 'package:anime_list/featuers/seasons/data/mapper/seasons_mapper.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/constants.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../domain/model/seasons_model.dart';
import '../../domain/repository/seasons_repository.dart';
import '../data_source/seasons_remote_data_source.dart';

class SeasonsRepoImplementation implements SeasonsRepository {
  final RemoteSeasonsDataSource _dataSource;
  final NetworkInfo networkInfo;

  SeasonsRepoImplementation(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failer, SeasonsModel>> seasons() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.seasons();
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
