import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../repository/seasons_repository.dart';

class SeasonsUseCase implements BaseOutUsecase {
  final SeasonsRepository _seasonsRepository;

  SeasonsUseCase(this._seasonsRepository);

  @override
  Future<Either<Failer, dynamic>> execute() async {
    return await _seasonsRepository.seasons();
  }
}
