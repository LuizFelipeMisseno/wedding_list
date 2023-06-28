import 'package:dartz/dartz.dart';
import 'package:wedding_list/core/usecase.dart';
import 'package:wedding_list/features/domain/entities/user_entity.dart';
import 'package:wedding_list/features/domain/repositories/user_repository.dart';

class LoginUsecase extends Usecase<UserEntity, LoginParams> {
  LoginUsecase(this.repository);

  final UserRepository repository;

  @override
  Future<Either<Exception, UserEntity>> call(LoginParams params) {
    return repository.login(params);
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}
