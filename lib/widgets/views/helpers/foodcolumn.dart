import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/widgets/views/helpers/addbutton.dart';

import '../../../models/food/foodmodel.dart';
import '../../customtext.dart';

class FoodColumn extends StatelessWidget {
  FoodColumn({super.key, required this.foodModel});
  final FoodModel foodModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 150,
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
            SizedBox(width: 20),
            Column(
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
          ],
        ),
        AddButton(foodModel: foodModel),
      ],
    );
  }
}
