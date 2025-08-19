import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/theme/appcolors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.cont,
    required this.type,
  });
  final String hint;
  final TextEditingController cont;
  final InputType type;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: TextFormField(
        controller: widget.cont,
        obscureText: (widget.type == InputType.password) ? isObscure : false,
        maxLines: 1,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondary,
          fontSize: 16.sp,
          height: 1.h,
        ),
        decoration: InputDecoration(
          suffixIcon: (widget.type == InputType.password)
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye,
                    color: AppColors.textSecondary,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 20.h,
          ),
          hintText: widget.hint,
          hintStyle: GoogleFonts.inter(
            color: AppColors.textSecondary,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.backGroundOnSecondary,
              width: 1.w,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.backGroundOnSecondary,
              width: 1.w,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.backGroundOnSecondary,
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.backGroundOnSecondary,
              width: 1.w,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.backGroundOnSecondary,
              width: 1.w,
            ),
          ),
        ),
        validator: (value) {
          switch (widget.type) {
            case InputType.email:
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your email !';
              }
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value.trim())) {
                return 'Please enter a valid email address !';
              }
              return null; // va
            case InputType.password:
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your password !';
              }
              if (value.trim().length < 6) {
                return 'Password must be at least 6 characters long !';
              }
              if (!RegExp(
                r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{6,}$',
              ).hasMatch(value.trim())) {
                return 'Password must contain upper, lower case letters and a number !';
              }
              return null; // valid

            case InputType.name:
              if (value == null || value.trim().isEmpty) {
                return 'Name is required !';
              }
              if (value.length < 2) {
                return 'Name is too short !';
              }
              return null;
          }
        },
      ),
    );
  }
}

enum InputType { name, password, email }
