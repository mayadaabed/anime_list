import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../data/request/anime_details_request.dart';
import '../model/anime_details_model.dart';

abstract class AnimeDetailsRepository {
  Future<Either<Failer, AnimeDetailsModel>> animeDetails(
      AnimeDetailsRequest animeDetailsRequest);
}
