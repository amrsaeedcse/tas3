import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/controllers/cart_bloc/cart_control_cubit.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_app_bar.dart';
import 'package:task/helpers/widgets/gap.dart';
import 'package:task/models/products/products_model.dart';
import 'package:task/views/screens/producs_page.dart';
import 'package:task/views/widgets/filter_button.dart';
import 'package:task/views/widgets/filter_row.dart';
import 'package:task/views/widgets/product_column.dart';
import 'package:task/views/widgets/search_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchForm(),
            Gap(h: 24.h),
            FilterRow(),
            Gap(h: 24.h),
            BlocBuilder<CartControlCubit, CartControlState>(
              builder: (context, state) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ProductModel.products.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(
                              productModel: ProductModel.products[index],
                            ),
                          ),
                        );
                      },
                      child: ProductColumn(
                        productModel: ProductModel.products[index],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12.h,
                    crossAxisSpacing: 12.w,
                    childAspectRatio: 173 / 242,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
