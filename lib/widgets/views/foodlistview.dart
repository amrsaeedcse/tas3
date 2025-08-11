import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:task/models/food/foodmodel.dart';
import 'package:task/widgets/views/helpers/foodrow.dart';

import '../customtext.dart';

class FoodListView extends StatefulWidget {
  FoodListView({super.key});

  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            // IconButton()
            return AnimationConfiguration.staggeredList(
              duration: Duration(milliseconds: 300),
              position: index,
              child: SlideAnimation(
                duration: Duration(milliseconds: 500),
                horizontalOffset: 50,
                child: FadeInAnimation(
                  child: FoodRow(foodModel: FoodModel.foodList[index]),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 20),
          itemCount: FoodModel.foodList.length,
        ),
      ),
    );
  }
}
