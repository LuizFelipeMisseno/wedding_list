class GiftEntity {
  final String id;
  final String name;
  final double price;
  final String? link;
  final bool isMarked;
  final String? buyerId;

  GiftEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.link,
    this.isMarked = false,
    required this.buyerId,
  });
}
