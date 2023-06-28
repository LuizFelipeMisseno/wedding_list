import 'package:dartz/dartz.dart';
import 'package:wedding_list/features/domain/entities/gift_entity.dart';
import 'package:wedding_list/features/domain/usecases/add_gift_usecase.dart';
import 'package:wedding_list/features/domain/usecases/toggle_gift_usecase.dart';

abstract class GiftRepository {
  Future<Either<Exception, GiftEntity>> toggleGift(ToggleGiftParams params);
  Future<Either<Exception, GiftEntity>> addGift(AddGiftParams params);
}
