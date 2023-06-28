import 'package:dartz/dartz.dart';

abstract class Usecase<Output, Input> {
  Future<Either<Exception, Output>> call(Input params);
}

abstract class NoParamsUsecase<Output> {
  Future<Either<Exception, Output>> call();
}
