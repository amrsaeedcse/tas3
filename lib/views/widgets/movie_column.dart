import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/helpers/widgets/movie_screen.dart';

class MovieColumn extends StatelessWidget {
  const MovieColumn({
    super.key,
    required this.image,
    required this.title,
    required this.height,
    required this.width,
    required this.tag,
  });
  final DecorationImage image;
  final double height;
  final double width;
  final String title;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: tag,
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(8.r),
                image: image,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        FittedBox(
          child: CustomText(text: title, size: 16.sp, weight: FontWeight.w500),
        ),
      ],
    );
  }
}
