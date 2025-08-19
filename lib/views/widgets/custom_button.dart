import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.text});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        backgroundColor: AppColors.backGroundSecondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8.r),
          side: BorderSide.none,
        ),
      ),
      onPressed: onTap,
      child: CustomText(
        text: text,
        size: 16.sp,
        weight: FontWeight.bold,
        color: AppColors.backGroundPrimary,
      ),
    );
  }
}
