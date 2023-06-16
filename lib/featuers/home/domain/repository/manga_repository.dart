import 'package:dartz/dartz.dart';
import '../../../../core/error_handler/error_handler.dart';
import '../model/manga_models/manga_model.dart';

abstract class MangaRepository {
  Future<Either<Failer, MangaModel>> manga();
}
