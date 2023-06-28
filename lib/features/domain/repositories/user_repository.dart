import 'package:dartz/dartz.dart';
import 'package:wedding_list/features/domain/entities/user_entity.dart';
import 'package:wedding_list/features/domain/usecases/login_usecase.dart';

abstract class UserRepository {
  Future<Either<Exception, UserEntity>> login(LoginParams params);
}
