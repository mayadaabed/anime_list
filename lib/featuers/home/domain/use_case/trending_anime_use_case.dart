import 'package:anime_list/core/error_handler/error_handler.dart';
import 'package:anime_list/core/use_case/base_use_case.dart';
import 'package:anime_list/featuers/home/domain/repository/trending_anime_repository.dart';
import 'package:dartz/dartz.dart';

class TrendingAnimeUseCase implements BaseOutUsecase {
  final TrendingAnimeRepository _trendingAnimeRepository;

  TrendingAnimeUseCase(this._trendingAnimeRepository);

  @override
  Future<Either<Failer, dynamic>> execute() async {
    return await _trendingAnimeRepository.trendingAnime();
  }
}
