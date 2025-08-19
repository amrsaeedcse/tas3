import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.suffixWidget,
    required this.prefixWidget,
  });
  final String title;
  final Widget? suffixWidget;
  final Widget? prefixWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.w),
      centerTitle: true,
      title: CustomText(text: title, size: 18.sp, weight: FontWeight.bold),
      actions: [?suffixWidget],
      leading: prefixWidget,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(72.h);
}
