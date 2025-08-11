import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:task/animation/fadeanimation.dart';
import 'package:task/models/food/foodmodel.dart';

import 'customtext.dart';

class CustomSlider extends StatelessWidget {
  CustomSlider({super.key});
  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    List<Widget> foods = FoodModel.foodList.map((e) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: FadeAnimation(
                widget: Image.asset(e.imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(text: e.name, weight: FontWeight.w500, size: 16),
          ),
        ],
      );
    }).toList();
    return CarouselSlider(
      items: foods,
      options: CarouselOptions(
        enlargeCenterPage: true,
        height: 250,
        padEnds: false,
      ),
      carouselController: carouselController,
    );
  }
}
