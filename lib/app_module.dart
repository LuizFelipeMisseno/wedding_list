import 'package:flutter_modular/flutter_modular.dart';
import 'package:wedding_list/features/data/datasources/gift/gift_datasource_implementation.dart';
import 'package:wedding_list/features/data/datasources/user/user_datasource_implementation.dart';
import 'package:wedding_list/features/data/repositories/gift_repository_implementation.dart';
import 'package:wedding_list/features/data/repositories/user_repository_implementation.dart';
import 'package:wedding_list/features/domain/usecases/add_gift_usecase.dart';
import 'package:wedding_list/features/domain/usecases/login_usecase.dart';
import 'package:wedding_list/features/domain/usecases/toggle_gift_usecase.dart';
import 'package:wedding_list/features/presenter/home/pages/home_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    //Usecases
    Bind.factory((i) => LoginUsecase(i())),
    Bind.factory((i) => AddGiftUsecase(i())),
    Bind.factory((i) => ToggleGiftUsecase(i())),

    //Repositories
    Bind.factory((i) => UserRepositoryImplementation(i())),
    Bind.factory((i) => GiftRepositoryImplementation(i())),

    //Datasources
    Bind.factory((i) => UserDataSourceImplementation()),
    Bind.factory((i) => GiftDatasourceImplementation()),

    //Packages
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomePage()),
  ];
}
