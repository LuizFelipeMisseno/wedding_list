import 'package:wedding_list/features/domain/entities/gift_entity.dart';
import 'package:wedding_list/features/domain/usecases/add_gift_usecase.dart';
import 'package:wedding_list/features/domain/usecases/toggle_gift_usecase.dart';

abstract class GiftDatasource {
  Future<GiftEntity> toggleGift(ToggleGiftParams params);
  Future<GiftEntity> addGift(AddGiftParams params);
}
