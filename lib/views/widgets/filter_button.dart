import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';

class FilterButton extends StatefulWidget {
  FilterButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  final String text;
  final void Function() onTap;

  bool isSelected;

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        padding: EdgeInsetsGeometry.symmetric(vertical: 5.5, horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: widget.isSelected
              ? AppColors.backGroundSecondary
              : AppColors.backGroundOnPrimary,
        ),
        child: CustomText(
          text: widget.text,
          size: 14.sp,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
