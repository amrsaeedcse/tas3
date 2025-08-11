import 'package:flutter/cupertino.dart';

import '../../models/cart/cartmodel.dart';

class CartControl extends ChangeNotifier {
  List<CartModel> cart = [];

  double subTotal = 0.0;

  void addToCart(CartModel cartModel) {
    cart.add(cartModel);
    setPrice();
    notifyListeners();
  }

  void removeFromCart(CartModel cartModel) {
    cart.removeWhere((element) => element.pId == cartModel.pId);
    setPrice();
    notifyListeners();
  }

  void setPrice() {
    subTotal = 0.0;

    for (CartModel cartModel in cart) {
      subTotal += cartModel.quantity * cartModel.pPrice;
    }
  }

  void setPriceCounter() {
    subTotal = 0.0;

    for (CartModel cartModel in cart) {
      subTotal += cartModel.quantity * cartModel.pPrice;
    }
    notifyListeners();
  }
}
