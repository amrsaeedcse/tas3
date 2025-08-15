import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/fav_controller.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/movie_model.dart';
import 'package:task/views/widgets/fav_Row.dart';

import '../../controllers/fav_controller.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favController = Provider.of<FavController>(context, listen: true);
    print(favController.favList.length);
    return favController.favList.isNotEmpty
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: ListView.separated(
              padding: EdgeInsets.only(top: 12.h),
              itemBuilder: (context, index) {
                MovieModel model = favController.favList[index];
                return FavRow(model: model);
              },
              separatorBuilder: (context, index) => SizedBox(height: 24.h),
              itemCount: favController.favList.length,
            ),
          )
        : Center(
            child: CustomText(
              text: "No Favorite Movies",
              size: 20.sp,
              weight: FontWeight.bold,
            ),
          );
  }
}
