import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:task/models/food/foodmodel.dart';
import 'package:task/widgets/views/helpers/foodcolumn.dart';

class FoodGridView extends StatefulWidget {
  const FoodGridView({super.key});

  @override
  State<FoodGridView> createState() => _FoodGridViewState();
}

class _FoodGridViewState extends State<FoodGridView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio:
                MediaQuery.sizeOf(context).width *
                1.6 /
                MediaQuery.sizeOf(context).height,
          ),
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              duration: Duration(milliseconds: 300),
              position: index,
              child: SlideAnimation(
                duration: Duration(milliseconds: 500),
                horizontalOffset: 50,
                child: FadeInAnimation(
                  child: FoodColumn(foodModel: FoodModel.foodList[index]),
                ),
              ),
            );
          },
          itemCount: FoodModel.foodList.length,
        ),
      ),
    );
    ;
  }
}
