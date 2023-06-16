import 'package:anime_list/featuers/home/data/mapper/manga_mapper/manga_mapper.dart';
import 'package:dartz/dartz.dart';
import '../../../../config/constants.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../domain/model/manga_models/manga_model.dart';
import '../../domain/repository/manga_repository.dart';
import '../data_source/remote_manga_data_source.dart';

class MangaImplementation implements MangaRepository {
  final RemoteMangaDataSource _dataSource;
  final NetworkInfo networkInfo;

  MangaImplementation(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failer, MangaModel>> manga() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.manga();
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
