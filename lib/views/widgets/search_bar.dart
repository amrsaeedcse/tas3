import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/theme/appcolors.dart';

class SearchFormBar extends StatelessWidget {
  const SearchFormBar({super.key, this.cont});
  final TextEditingController? cont;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: true,
      maxLines: null,
      controller: cont,
      decoration: InputDecoration(
        contentPadding: EdgeInsetsGeometry.symmetric(horizontal: 48.w),
        filled: true,
        fillColor: AppColors.backGroundSecondary,
        hintText: "Search",
        prefixIcon: Container(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.search_outlined,
            color: AppColors.textSecondary,
            size: 24.sp,
          ),
        ),
        prefixIconConstraints: BoxConstraints.loose(Size.fromWidth(40)),
        hintStyle: GoogleFonts.plusJakartaSans(
          fontSize: 16.sp,
          color: AppColors.textSecondary,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
