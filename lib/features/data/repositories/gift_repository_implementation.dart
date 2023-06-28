import 'package:dartz/dartz.dart';
import 'package:wedding_list/features/data/datasources/gift/gift_datasource.dart';
import 'package:wedding_list/features/domain/entities/gift_entity.dart';
import 'package:wedding_list/features/domain/repositories/gift_repository.dart';
import 'package:wedding_list/features/domain/usecases/add_gift_usecase.dart';
import 'package:wedding_list/features/domain/usecases/toggle_gift_usecase.dart';

class GiftRepositoryImplementation implements GiftRepository {
  GiftRepositoryImplementation(this.datasource);

  final GiftDatasource datasource;

  @override
  Future<Either<Exception, GiftEntity>> addGift(AddGiftParams params) async {
    try {
      final result = await datasource.addGift(params);
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Exception, GiftEntity>> toggleGift(ToggleGiftParams params) async {
    try {
      final result = await datasource.toggleGift(params);
      return Right(result);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
