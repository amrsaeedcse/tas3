import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/appcolors.dart';
import 'custom_text.dart';

class ShowSnack {
  static showSnack(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: AppColors.backGroundSecondary,
        content: Container(
          alignment: Alignment.center,
          child: CustomText(
            text: text,
            size: 14.sp,
            weight: FontWeight.bold,
            color: AppColors.backGroundPrimary,
          ),
        ),
      ),
    );
  }
}
