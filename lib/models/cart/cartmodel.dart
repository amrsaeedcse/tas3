class CartModel {
  final String name;
  final String imageUrl;
  final String disc;
  int quantity = 1;

  final int pId;
  final double pPrice;
  CartModel({
    required this.pPrice,
    required this.name,
    required this.imageUrl,
    required this.disc,
    required this.pId,
  });
}
