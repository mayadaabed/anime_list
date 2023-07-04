import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../data/request/search_request.dart';
import '../model/search_model.dart';

abstract class SearchRepository {
  Future<Either<Failer, SearchModel>> search(SearchRequest searchRequest);
}
