import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_app_bar.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/movie_model.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key, required this.model, required this.tag});

  final MovieModel model;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "", widget: null),
      backgroundColor: AppColors.backGroundPrimary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: tag,
              child: Material(
                color: Colors.transparent,
                child: Image.asset(
                  model.image,
                  height: 320.w,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: model.title,
                    size: 22.sp,
                    weight: FontWeight.w700,
                  ),
                  SizedBox(height: 12.h),
                  CustomText(
                    text:
                        "Release Date: ${model.dateTime.year}-${model.dateTime.month}-${model.dateTime.day}-",
                    size: 14.sp,
                    weight: FontWeight.w400,
                    color: AppColors.textSecondary,
                  ),
                  SizedBox(height: 12.h),
                  CustomText(
                    text: model.disc,
                    size: 16.sp,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
