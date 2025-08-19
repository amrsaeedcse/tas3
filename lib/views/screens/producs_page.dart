import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/models/products/products_model.dart';

import '../../helpers/widgets/custom_app_bar.dart';
import '../../helpers/widgets/custom_text.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.productModel, required this.tag});
  final ProductModel productModel;
  final String tag; //for hero anim

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Product Info",
        prefixWidget: null,
        suffixWidget: null,
      ),
      backgroundColor: AppColors.backGroundPrimary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: tag, //temp
              child: Material(
                color: Colors.transparent,
                child: Image.asset(
                  productModel.image,
                  height: 320.w,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: productModel.name,
                    size: 22.sp,
                    weight: FontWeight.w700,
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(height: 12.h),
                  CustomText(
                    text: productModel.disc,
                    size: 16.sp,
                    weight: FontWeight.w400,
                    maxLines: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
