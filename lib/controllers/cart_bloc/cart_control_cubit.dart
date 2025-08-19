import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task/models/products/cart_model.dart';
import 'package:task/models/products/products_model.dart';

part 'cart_control_state.dart';

class CartControlCubit extends Cubit<CartControlState> {
  CartControlCubit() : super(CartControlValue([], 0));

  void addToCart(CartModel pr) {
    List<CartModel> cartProducts = state.cartProducts;
    cartProducts.add(pr);
    getPrice();
  }

  void removeFromCart(CartModel pr) {
    List<CartModel> cartProducts = state.cartProducts;
    cartProducts.removeWhere((element) => element.pId == pr.pId);
    getPrice();
  }

  void getPrice() {
    double sum = 0;
    for (var pr in state.cartProducts) {
      sum += pr.price * pr.quantity;
    }
    emit(CartControlValue(state.cartProducts, sum));
    print(state.price);
  }
}
