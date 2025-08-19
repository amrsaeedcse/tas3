import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/controllers/cart_bloc/cart_control_cubit.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/models/products/cart_model.dart';
import 'package:task/models/products/products_model.dart';

class AddToCartIcon extends StatefulWidget {
  const AddToCartIcon({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<AddToCartIcon> createState() => _AddToCartIconState();
}

class _AddToCartIconState extends State<AddToCartIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          if (widget.productModel.isAdded == true) {
            setState(() {
              widget.productModel.isAdded = false;
              context.read<CartControlCubit>().removeFromCart(
                CartModel(
                  quantity: 1,
                  price: widget.productModel.price,
                  name: widget.productModel.name,
                  image: widget.productModel.image,
                  pId: widget.productModel.pId,
                ),
              );
            });
          } else {
            setState(() {
              widget.productModel.isAdded = true;
              context.read<CartControlCubit>().addToCart(
                CartModel(
                  quantity: 1,
                  price: widget.productModel.price,
                  name: widget.productModel.name,
                  image: widget.productModel.image,
                  pId: widget.productModel.pId,
                ),
              );
            });
          }
        });
      },
      icon: Icon(
        widget.productModel.isAdded
            ? Icons.shopping_cart
            : Icons.shopping_cart_outlined,
        color: AppColors.textPrimary,
      ),
    );
  }
}
