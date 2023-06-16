import 'package:anime_list/core/error_handler/error_handler.dart';
import 'package:anime_list/featuers/home/data/data_source/remote_trending_anime_data_source.dart';
import 'package:anime_list/featuers/home/data/mapper/trending_anime_mapper/trending_anime_mapper.dart';
import 'package:anime_list/featuers/home/domain/model/trending_anime_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../config/constants.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../domain/repository/trending_anime_repository.dart';

class TrendingAnimeImplementation implements TrendingAnimeRepository {
  final RemoteTrendingAnimeDataSource _dataSource;
  final NetworkInfo networkInfo;

  TrendingAnimeImplementation(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failer, TrendingAnimeModel>> trendingAnime() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.trendingAnime();
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
