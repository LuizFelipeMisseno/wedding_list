import 'package:dartz/dartz.dart';
import 'package:wedding_list/features/data/datasources/user/user_datasource.dart';
import 'package:wedding_list/features/domain/entities/user_entity.dart';
import 'package:wedding_list/features/domain/repositories/user_repository.dart';
import 'package:wedding_list/features/domain/usecases/login_usecase.dart';

class UserRepositoryImplementation implements UserRepository {
  UserRepositoryImplementation(this.datasource);

  final UserDatasource datasource;

  @override
  Future<Either<Exception, UserEntity>> login(LoginParams params) async {
    try {
      final result = await datasource.login(params);
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
