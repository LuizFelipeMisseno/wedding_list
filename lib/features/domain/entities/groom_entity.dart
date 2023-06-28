import 'package:wedding_list/features/domain/entities/gift_entity.dart';

class GroomEntity {
  final String email;
  final String password;
  final List<GiftEntity> gifts;

  GroomEntity(this.email, this.password, this.gifts);
}
