import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../model/schedules_model.dart';

abstract class SchedulesRepository {
  Future<Either<Failer, SchedulesModel>> schedules();
}
