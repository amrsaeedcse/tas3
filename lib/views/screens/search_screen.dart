import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/movie_model.dart';
import 'package:task/views/widgets/search_bar.dart';

import '../../helpers/widgets/movie_screen.dart';
import '../widgets/fav_icon.dart';
import '../widgets/movie_column.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.movies});

  final List<MovieModel> movies;
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController cont;

  @override
  void initState() {
    // TODO: implement initState
    cont = TextEditingController(text: "");
    cont.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<MovieModel> data = widget.movies
        .where(
          (element) =>
              element.title.toLowerCase().contains(cont.text.toLowerCase()),
        )
        .toList();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.backGroundPrimary,
          leadingWidth: 30.w,
          leading: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: AppColors.textPrimary),
            ),
          ),
          title: SizedBox(
            height: 36.h,
            child: Hero(
              tag: "s",
              child: Material(
                color: Colors.transparent,
                child: SearchFormBar(cont: cont),
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.backGroundPrimary,
        body: data.isNotEmpty
            ? Padding(
                key: UniqueKey(),
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: AnimationLimiter(
                  child: GridView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsetsGeometry.symmetric(vertical: 16.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 137.w * 1.3 / 278.62.h,
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.w,
                      mainAxisSpacing: 12.h,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      MovieModel model = data[index];
                      return AnimationConfiguration.staggeredList(
                        duration: Duration(milliseconds: 500),
                        position: index,
                        child: SlideAnimation(
                          horizontalOffset: 50,
                          child: FadeInAnimation(
                            child: Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => MovieScreen(
                                          model: model,
                                          tag: "${index}1",
                                        ),
                                      ),
                                    );
                                  },
                                  child: MovieColumn(
                                    tag: "${index}1",
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
                                  child: FavIcon(
                                    model: model,
                                    allowAdding: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            : Center(
                child: CustomText(
                  text: "No Movies found",
                  size: 20.sp,
                  weight: FontWeight.w700,
                ),
              ),
      ),
    );
  }
}
