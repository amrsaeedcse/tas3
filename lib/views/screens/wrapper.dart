import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/views/screens/cart_page.dart';
import 'package:task/views/screens/home_page.dart';
import 'package:task/views/widgets/app_bar_widgets.dart';

import '../../helpers/theme/appcolors.dart';
import '../../helpers/widgets/custom_app_bar.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 95.h,
        child: BottomNavigationBar(
          backgroundColor: AppColors.backGroundPrimary,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.textPrimary,
          unselectedItemColor: AppColors.textSecondary,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
          currentIndex: currIndex,
          onTap: (value) {
            setState(() {
              currIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                currIndex == 0 ? Icons.home : Icons.home_outlined,
                size: 24.sp,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined, size: 24.sp),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currIndex == 2 ? Icons.favorite : Icons.favorite_border,
                size: 24.sp,
              ),
              label: "WishList",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currIndex == 3
                    ? Icons.shopping_cart
                    : Icons.shopping_cart_outlined,
                size: 24.sp,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                currIndex == 4 ? Icons.person : Icons.person_outline,
                size: 24.sp,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.backGroundPrimary,
      appBar: AppBarWidgets.appBars[currIndex],
      body: IndexedStack(
        index: currIndex,
        children: [
          HomePage(),
          Placeholder(),
          Placeholder(),
          CartPage(),
          Placeholder(),
        ],
      ),
    );
  }
}
