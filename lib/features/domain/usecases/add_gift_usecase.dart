import 'package:dartz/dartz.dart';
import 'package:wedding_list/core/usecase.dart';
import 'package:wedding_list/features/domain/entities/gift_entity.dart';
import 'package:wedding_list/features/domain/repositories/gift_repository.dart';

class AddGiftUsecase extends Usecase<GiftEntity, AddGiftParams> {
  AddGiftUsecase(this.repository);

  final GiftRepository repository;

  @override
  Future<Either<Exception, GiftEntity>> call(AddGiftParams params) {
    return repository.addGift(params);
  }
}

class AddGiftParams {
  final GiftEntity giftEntity;

  AddGiftParams({required this.giftEntity});
}
