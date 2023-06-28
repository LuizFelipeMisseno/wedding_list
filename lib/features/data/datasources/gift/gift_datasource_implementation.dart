import 'package:wedding_list/features/data/datasources/gift/gift_datasource.dart';
import 'package:wedding_list/features/domain/entities/gift_entity.dart';
import 'package:wedding_list/features/domain/usecases/add_gift_usecase.dart';
import 'package:wedding_list/features/domain/usecases/toggle_gift_usecase.dart';

class GiftDatasourceImplementation implements GiftDatasource {
  @override
  Future<GiftEntity> addGift(AddGiftParams params) {
    // TODO: implement addGift
    throw UnimplementedError();
  }

  @override
  Future<GiftEntity> toggleGift(ToggleGiftParams params) {
    // TODO: implement toggleGift
    throw UnimplementedError();
  }
}
