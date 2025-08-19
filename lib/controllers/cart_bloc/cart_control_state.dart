part of 'cart_control_cubit.dart';

@immutable
sealed class CartControlState {
  final List<CartModel> cartProducts;
  double price;
  CartControlState(this.cartProducts, this.price);
}

final class CartControlValue extends CartControlState {
  CartControlValue(List<CartModel> cartProducts, double price)
    : super(cartProducts, price);
}
