import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/views/widgets/movie_column.dart';

import '../../helpers/widgets/movie_screen.dart';
import '../../models/movie_model.dart';

class FeaturedList extends StatelessWidget {
  FeaturedList({super.key});
  final List<MovieModel> featuredList = MovieModel.movieList
      .where((element) => element.isFeatured)
      .toList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      itemBuilder: (context, index) {
        MovieModel model = featuredList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    MovieScreen(model: model, tag: "${index}2"),
              ),
            );
          },
          child: MovieColumn(
            tag: "${index}2",
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(model.image),
            ),
            title: model.title,
            height: 320.h,
            width: 240.w,
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 12.w),
      itemCount: featuredList.length,
    );
  }
}
