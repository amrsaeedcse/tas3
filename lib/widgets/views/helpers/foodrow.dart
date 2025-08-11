import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/models/cart/cartmodel.dart';
import 'package:task/provider/cartprovider/cartcontrol.dart';
import 'package:task/widgets/customtext.dart';
import 'package:task/widgets/views/helpers/addbutton.dart';

import '../../../models/food/foodmodel.dart';

class FoodRow extends StatelessWidget {
  FoodRow({super.key, required this.foodModel});
  final FoodModel foodModel;

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
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: Image.asset(foodModel.imageUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: CustomText(
                      text: "\$${foodModel.pPrice}",
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
                      text: foodModel.name,
                      weight: FontWeight.w700,
                      size: 18,
                    ),
                    CustomText(
                      text: foodModel.disc,
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
        SizedBox(width: 5),
        SizedBox(width: 120, child: AddButton(foodModel: foodModel)),
      ],
    );
  }
}
