import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/movie_model.dart';
import 'package:task/views/widgets/fav_icon.dart';

class FavRow extends StatelessWidget {
  const FavRow({super.key, required this.model});
  final MovieModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.circular(8.r),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(model.image),
            ),
          ),
          width: 56.w,
          height: 75.h,
        ),
        SizedBox(width: 16.w),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: model.title, size: 16.sp, weight: FontWeight.w500),
            CustomText(
              text:
                  "${model.dateTime.year}.${model.dateTime.month}.${model.dateTime.day}",
              size: 14.sp,
              weight: FontWeight.w500,
              color: AppColors.textSecondary,
            ),
          ],
        ),
        Spacer(),
        FavIcon(model: model, allowAdding: false),
      ],
    );
  }
}
