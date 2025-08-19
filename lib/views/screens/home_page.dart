import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task/animation/fadeanimation.dart';
import 'package:task/controllers/cart_bloc/cart_control_cubit.dart';
import 'package:task/controllers/sorting/sort_control.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_app_bar.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/helpers/widgets/gap.dart';
import 'package:task/models/products/products_model.dart';
import 'package:task/views/screens/producs_page.dart';
import 'package:task/views/widgets/filter_button.dart';
import 'package:task/views/widgets/filter_row.dart';
import 'package:task/views/widgets/product_column.dart';
import 'package:task/views/widgets/search_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchCont = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    searchCont.addListener(() {
      context.read<SortByControl>().refresh();
    });
    super.initState();
  }

  List<ProductModel> sortBy(SortBy sortBy) {
    switch (sortBy) {
      case SortBy.featured:
        return List<ProductModel>.from(
          ProductModel.products.where((element) => element.isFeatured).toList(),
        );
      case SortBy.newPr:
        return List<ProductModel>.from(
          ProductModel.products.where((element) => element.isNew).toList(),
        );
      default:
        return ProductModel.products;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchForm(textEditingController: searchCont),
              Gap(h: 24.h),
              FilterRow(),
              Gap(h: 24.h),
              BlocBuilder<CartControlCubit, CartControlState>(
                builder: (context, state) {
                  return Consumer<SortByControl>(
                    builder: (context, state, w) {
                      print("search");
                      List<ProductModel> sortedList = sortBy(state.sortBy);
                      List<ProductModel> searchedList = sortedList
                          .where(
                            (element) => element.name.toLowerCase().contains(
                              searchCont.text.toLowerCase(),
                            ),
                          )
                          .toList();
                      return searchedList.isNotEmpty
                          ? GridView.builder(
                              key: ValueKey(
                                state.sortBy,
                              ), //just for animation fade bec flutter will see no changed so will just no replace it in widget tree so we make it replace it and also render
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: searchedList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    context.push(
                                      "/product_page/$index",
                                      extra: searchedList[index],
                                    );
                                  },
                                  child: FadeAnimation(
                                    widget: ProductColumn(
                                      tag: index.toString(),
                                      productModel: searchedList[index],
                                    ),
                                  ),
                                );
                              },
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 12.h,
                                    crossAxisSpacing: 12.w,
                                    childAspectRatio: 173 / 242,
                                  ),
                            )
                          : Center(
                              child: CustomText(
                                text: "No search like that ",
                                size: 20.sp,
                                weight: FontWeight.w700,
                              ),
                            );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
