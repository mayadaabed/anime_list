import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../../../../core/use_case/base_use_case.dart';
import '../repository/schedules_repository.dart';

class SchedulesUseCase implements BaseOutUsecase {
  final SchedulesRepository _schedulesRepository;

  SchedulesUseCase(this._schedulesRepository);

  @override
  Future<Either<Failer, dynamic>> execute() async {
    return await _schedulesRepository.schedules();
  }
}
