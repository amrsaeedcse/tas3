import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/cart_bloc/cart_control_cubit.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/models/products/cart_model.dart';
import 'package:task/models/products/products_model.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.cartModel});

  final CartModel cartModel;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: AppColors.backGroundOnPrimary,
          shape: CircleBorder(),
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              if (counter > 1) {
                setState(() {
                  counter--;
                  widget.cartModel.quantity--;
                });
                context.read<CartControlCubit>().getPrice();
              } else {
                ProductModel.products
                        .firstWhere(
                          (element) => element.pId == widget.cartModel.pId,
                        )
                        .isAdded =
                    false;
                context.read<CartControlCubit>().removeFromCart(
                  widget.cartModel,
                );
              }
            },
            child: Container(
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.remove,
                  color: AppColors.textPrimary,
                  size: 14.sp,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        CustomText(
          text: counter.toString(),
          size: 16.sp,
          weight: FontWeight.w500,
        ),
        SizedBox(width: 8.w),

        Material(
          color: AppColors.backGroundOnPrimary,
          shape: CircleBorder(),
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              setState(() {
                counter++;
                widget.cartModel.quantity++;
                context.read<CartControlCubit>().getPrice();
              });
            },
            child: Container(
              width: 28.w,
              height: 28.h,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: AppColors.textPrimary,
                  size: 14.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
