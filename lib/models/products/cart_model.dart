class CartModel {
  final String image;
  final String name;
  final int pId;
  final double price;
  int quantity;

  CartModel({
    required this.quantity,
    required this.price,
    required this.name,
    required this.image,
    required this.pId,
  });
}
