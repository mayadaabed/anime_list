import 'package:anime_list/featuers/search/data/mapper/search_mapper.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/constants.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/internet_checker/internet_checker.dart';
import '../../domain/model/search_model.dart';
import '../../domain/repository/search_repository.dart';
import '../data_source/remote_search_data_source.dart';
import '../request/search_request.dart';

class SearchRepoImplementation implements SearchRepository {
  final RemoteSearchDataSource _dataSource;
  final NetworkInfo networkInfo;

  SearchRepoImplementation(this._dataSource, this.networkInfo);

  @override
  Future<Either<Failer, SearchModel>> search(
      SearchRequest searchRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await _dataSource.search(searchRequest);
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
