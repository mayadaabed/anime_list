import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../model/seasons_model.dart';

abstract class SeasonsRepository {
  Future<Either<Failer, SeasonsModel>> seasons();
}
