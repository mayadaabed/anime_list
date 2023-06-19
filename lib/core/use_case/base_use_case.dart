import 'package:dartz/dartz.dart';

import '../error_handler/error_handler.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failer, Out>> execute(In input);
}

abstract class BaseOutUsecase<Out> {
  Future<Either<Failer, Out>> execute();
}
