import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/models/cart/cartmodel.dart';
import 'package:task/widgets/counter.dart';

import 'customtext.dart';

class CartRow extends StatelessWidget {
  const CartRow({super.key, required this.cartModel});
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image.asset(cartModel.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: CustomText(
                      text: "\$${cartModel.pPrice}",
                      weight: FontWeight.w700,
                      size: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomText(
                      text: cartModel.name,
                      weight: FontWeight.w700,
                      size: 18,
                    ),
                    CustomText(
                      text: cartModel.disc,
                      weight: FontWeight.w700,
                      size: 15,
                      color: Colors.red[200]!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Counter(cartModel: cartModel),
      ],
    );
  }
}
