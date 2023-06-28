import 'package:wedding_list/features/data/datasources/user/user_datasource.dart';
import 'package:wedding_list/features/domain/entities/user_entity.dart';
import 'package:wedding_list/features/domain/usecases/login_usecase.dart';

class UserDataSourceImplementation implements UserDatasource {
  @override
  Future<UserEntity> login(LoginParams params) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
