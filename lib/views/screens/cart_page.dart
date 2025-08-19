import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:task/controllers/cart_bloc/cart_control_cubit.dart';
import 'package:task/helpers/widgets/gap.dart';
import 'package:task/views/widgets/cart_row.dart';
import 'package:task/views/widgets/custom_button.dart';
import 'package:task/views/widgets/price_container.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.w),
      child: BlocBuilder<CartControlCubit, CartControlState>(
        builder: (context, state) {
          print("dsds");
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gap(h: 8.h),

              SizedBox(
                height: 288.h,
                child: state.cartProducts.isNotEmpty
                    ? ListView.separated(
                        separatorBuilder: (context, index) => Gap(h: 16.h),
                        itemBuilder: (context, index) {
                          return CartRow(cartModel: state.cartProducts[index]);
                        },
                        itemCount: state.cartProducts.length,
                      )
                    : Center(
                        child: Lottie.asset("assets/lottie/Empty Cart.json"),
                      ),
              ),
              Spacer(),
              PriceContainer(subTotal: state.price),
              Gap(h: 12.h),
              CustomButton(onTap: () {}, text: "Proceed to Checkout"),
            ],
          );
        },
      ),
    );
  }
}
