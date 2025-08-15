import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/fav_controller.dart';
import 'package:task/models/movie_model.dart';
import 'package:task/views/widgets/fav_icon.dart';
import 'package:task/views/widgets/movie_column.dart';

import '../../helpers/widgets/movie_screen.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<FavController>(context, listen: true);
    return GridView.builder(
      itemCount: MovieModel.movieList.length,
      shrinkWrap: true,

      key: UniqueKey(),
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsetsGeometry.symmetric(vertical: 16.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 137.w * 1.3 / 278.62.h,
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
      ),
      itemBuilder: (BuildContext context, int index) {
        MovieModel model = MovieModel.movieList[index];
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        MovieScreen(model: model, tag: "${index}3"),
                  ),
                );
              },
              child: MovieColumn(
                tag: "${index}3",
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(model.image),
                ),
                title: model.title,
                height: 231.h,
                width: double.infinity,
              ),
            ),
            Positioned(
              right: 26.w,
              top: 24.h,
              child: FavIcon(model: model, allowAdding: true),
            ),
          ],
        );
      },
    );
  }
}
