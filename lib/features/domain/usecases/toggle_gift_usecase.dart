import 'package:dartz/dartz.dart';
import 'package:wedding_list/core/usecase.dart';
import 'package:wedding_list/features/domain/entities/gift_entity.dart';
import 'package:wedding_list/features/domain/repositories/gift_repository.dart';

class ToggleGiftUsecase extends Usecase<GiftEntity, ToggleGiftParams> {
  ToggleGiftUsecase(this.repository);

  final GiftRepository repository;

  @override
  Future<Either<Exception, GiftEntity>> call(ToggleGiftParams params) {
    return repository.toggleGift(params);
  }
}

class ToggleGiftParams {
  final String giftId;

  ToggleGiftParams({required this.giftId});
}
