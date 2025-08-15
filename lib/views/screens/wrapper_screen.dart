import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/fav_controller.dart';
import 'package:task/helpers/widgets/custom_app_bar.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/views/screens/fav_page.dart';
import 'package:task/views/screens/search_screen.dart';

import 'home_page.dart';

class WrapperScreen extends StatefulWidget {
  WrapperScreen({super.key});

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int currentIndex = 0;

  List<String> appBarTitles = ["Movie Catalog", "Watchlist"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: appBarTitles[currentIndex],
        widget: currentIndex == 1
            ? GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(
                      movies: Provider.of<FavController>(
                        context,
                        listen: false,
                      ).favList,
                    ),
                  ),
                ),
                child: Icon(
                  Icons.search_outlined,
                  color: AppColors.textPrimary,
                ),
              )
            : null,
      ),
      backgroundColor: AppColors.backGroundPrimary,
      bottomNavigationBar: SizedBox(
        height: 95.h,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: AppColors.backGroundSecondary,
          selectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
          unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
          selectedItemColor: AppColors.textPrimary,
          unselectedItemColor: AppColors.textSecondary,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: currentIndex == 0
                  ? Icon(Icons.home, size: 24.sp)
                  : Icon(Icons.home_outlined, size: 24.sp),
            ),
            BottomNavigationBarItem(
              label: "WatchList",
              icon: currentIndex == 1
                  ? Icon(Icons.bookmark, size: 24.sp)
                  : Icon(Icons.bookmark_outline, size: 24.sp),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [HomePage(), FavPage()],
      ),
    );
  }
}
