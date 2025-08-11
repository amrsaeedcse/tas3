import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/models/food/foodmodel.dart';

import '../../../models/cart/cartmodel.dart';
import '../../../provider/cartprovider/cartcontrol.dart';
import '../../customtext.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key, required this.foodModel});
  final FoodModel foodModel;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        backgroundColor: Colors.red[100],
      ),
      onPressed: () {
        if (widget.foodModel.isAddedToCart) {
          setState(() {
            widget.foodModel.isAddedToCart = false;
          });
          Provider.of<CartControl>(context, listen: false).removeFromCart(
            CartModel(
              pPrice: widget.foodModel.pPrice,
              name: widget.foodModel.name,
              imageUrl: widget.foodModel.imageUrl,
              disc: widget.foodModel.disc,
              pId: widget.foodModel.pId,
            ),
          );
        } else {
          setState(() {
            widget.foodModel.isAddedToCart = true;
          });
          Provider.of<CartControl>(context, listen: false).addToCart(
            CartModel(
              pPrice: widget.foodModel.pPrice,

              name: widget.foodModel.name,
              imageUrl: widget.foodModel.imageUrl,
              disc: widget.foodModel.disc,
              pId: widget.foodModel.pId,
            ),
          );
        }
      },
      child: widget.foodModel.isAddedToCart
          ? CustomText(
              text: "remove from cart",
              weight: FontWeight.w700,
              size: 12,
            )
          : CustomText(text: "add to cart", weight: FontWeight.w700, size: 12),
    );
  }
}
