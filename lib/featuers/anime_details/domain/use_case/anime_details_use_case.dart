import 'package:anime_list/featuers/anime_details/data/request/anime_details_request.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../model/anime_details_model.dart';
import '../repository/anime_details_repository.dart';

class AnimeDetailsBaseUseCaseInput {
  int id;

  AnimeDetailsBaseUseCaseInput({
    required this.id,
  });
}

class AnimeDetailsUseCase
    implements BaseUseCase<AnimeDetailsBaseUseCaseInput, AnimeDetailsModel> {
  final AnimeDetailsRepository _animeDetailsRepository;

  AnimeDetailsUseCase(this._animeDetailsRepository);

  @override
  Future<Either<Failer, AnimeDetailsModel>> execute(
      AnimeDetailsBaseUseCaseInput input) async {
    return await _animeDetailsRepository.animeDetails(AnimeDetailsRequest(
      id: input.id,
    ));
  }
}
