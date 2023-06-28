import 'package:wedding_list/features/domain/entities/user_entity.dart';
import 'package:wedding_list/features/domain/usecases/login_usecase.dart';

abstract class UserDatasource {
  Future<UserEntity> login(LoginParams params);
}
