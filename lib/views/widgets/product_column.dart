import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/helpers/widgets/gap.dart';
import 'package:task/models/products/products_model.dart';
import 'package:task/views/widgets/add_to_cart_icon.dart';

class ProductColumn extends StatelessWidget {
  const ProductColumn({super.key, required this.productModel});

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 173.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(productModel.image),
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            Positioned(
              right: 8.w,
              top: 8.h,
              child: AddToCartIcon(productModel: productModel),
            ),
          ],
        ),
        Gap(h: 12.h),
        Container(
          child: CustomText(
            text: productModel.name,
            size: 16.sp,
            weight: FontWeight.w500,
          ),
        ),
        CustomText(
          text: "\$ ${productModel.price}",
          size: 14.sp,
          weight: FontWeight.w400,
          color: AppColors.textSecondary,
        ),
      ],
    );
  }
}
