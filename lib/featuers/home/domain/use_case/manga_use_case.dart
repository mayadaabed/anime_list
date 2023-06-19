import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../repository/manga_repository.dart';

class MangaUseCase implements BaseOutUsecase {
  final MangaRepository _mangaRepository;

  MangaUseCase(this._mangaRepository);

  @override
  Future<Either<Failer, dynamic>> execute() async {
    return await _mangaRepository.manga();
  }
}
