import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helpers/theme/appcolors.dart';
import '../../helpers/widgets/custom_app_bar.dart';

class AppBarWidgets {
  static final List<CustomAppBar> appBars = [
    CustomAppBar(
      title: "ShopSmart",
      suffixWidget: Icon(
        Icons.shopping_cart_outlined,
        size: 24.sp,
        color: AppColors.textPrimary,
      ),
      prefixWidget: Icon(Icons.menu, size: 24.sp, color: AppColors.textPrimary),
    ),
    const CustomAppBar(title: "still", suffixWidget: null, prefixWidget: null),
    const CustomAppBar(title: "still", suffixWidget: null, prefixWidget: null),
    const CustomAppBar(title: "Cart", suffixWidget: null, prefixWidget: null),
    const CustomAppBar(title: "still", suffixWidget: null, prefixWidget: null),
  ];
}
