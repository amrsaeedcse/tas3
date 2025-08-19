import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/widgets/custom_text.dart';

import '../theme/appcolors.dart';

class CustomClickText extends StatelessWidget {
  const CustomClickText({super.key, required this.text, required this.onTap});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomText(
        text: text,
        size: 14.sp,
        weight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
    );
  }
}
