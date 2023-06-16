import 'package:anime_list/featuers/home/domain/model/trending_anime_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';

abstract class TrendingAnimeRepository {
  Future<Either<Failer, TrendingAnimeModel>> trendingAnime();
}
