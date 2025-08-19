import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/helpers/theme/appcolors.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondary,
          height: 1,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsetsGeometry.symmetric(
            vertical: 16.h,
            // horizontal: 20.w,
          ),
          prefixIconConstraints: BoxConstraints.tight(Size.fromWidth(48.w)),
          fillColor: AppColors.backGroundOnPrimary,
          filled: true,
          hintText: "Search",
          hintStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.textSecondary,
          ),

          prefixIcon: Container(
            padding: EdgeInsets.only(right: 8.w),
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.search_outlined,
              size: 24.sp,
              color: AppColors.textSecondary,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
