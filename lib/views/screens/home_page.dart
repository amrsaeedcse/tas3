import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/movie_model.dart';
import 'package:task/views/screens/search_screen.dart';
import 'package:task/views/widgets/featured_list.dart';
import 'package:task/views/widgets/movie_grid.dart';

import '../widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0.w, left: 16.w, top: 12.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SearchScreen(movies: MovieModel.movieList),
                  ),
                );
              },
              child: AbsorbPointer(
                child: SizedBox(
                  height: 36.h,
                  child: Hero(
                    tag: "s",
                    child: Material(
                      color: Colors.transparent,
                      child: SearchFormBar(),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 12.h),
            SizedBox(height: 392.h, child: FeaturedList()),
            SizedBox(height: 20.h),
            CustomText(
              text: "All Movies",
              size: 22.sp,
              weight: FontWeight.w700,
            ),
            SizedBox(height: 12.h),
            MovieGrid(),
          ],
        ),
      ),
    );
  }
}
