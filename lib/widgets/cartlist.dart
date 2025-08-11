import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:task/models/cart/cartmodel.dart';
import 'package:task/provider/cartprovider/cartcontrol.dart';
import 'package:task/widgets/cartrow.dart';
import 'package:task/widgets/views/helpers/foodrow.dart';

import 'counter.dart';

class CartList extends StatefulWidget {
  CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartControl>(context, listen: true);
    return cartController.cart.isNotEmpty
        ? ListView.separated(
            itemCount: cartController.cart.length,
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemBuilder: (BuildContext context, int index) {
              return CartRow(cartModel: cartController.cart[index]);
            },
          )
        : Center(child: Lottie.asset("assets/lottie/Empty box (1).json"));
  }
}
