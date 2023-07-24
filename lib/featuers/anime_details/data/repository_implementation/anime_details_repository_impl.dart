import 'package:anime_list/featuers/anime_details/data/mapper/anime_details_mapper.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/constants.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../domain/model/anime_details_model.dart';
import '../../domain/repository/anime_details_repository.dart';
import '../data_source/remote_anime_details_data_source.dart';
import '../request/anime_details_request.dart';

class AnimeDetailsRepoImplementation implements AnimeDetailsRepository {
  final RemoteAnimeDetailsDataSource _dataSource;
  final NetworkInfo networkInfo;

  AnimeDetailsRepoImplementation(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failer, AnimeDetailsModel>> animeDetails(
      AnimeDetailsRequest animeDetailsRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.animeDetails(animeDetailsRequest);
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
