import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/products/cart_model.dart';
import 'package:task/views/widgets/counter.dart';

import '../../helpers/theme/appcolors.dart';

class CartRow extends StatelessWidget {
  const CartRow({super.key, required this.cartModel});
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 56.h,
          width: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            image: DecorationImage(
              image: AssetImage(cartModel.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 150.w,
              child: CustomText(
                text: cartModel.name,
                size: 16.sp,
                weight: FontWeight.w500,
              ),
            ),
            CustomText(
              text: cartModel.price.toString(),
              size: 14.sp,
              weight: FontWeight.w400,
              color: AppColors.textSecondary,
            ),
          ],
        ),
        Spacer(),
        Counter(cartModel: cartModel),
      ],
    );
  }
}
