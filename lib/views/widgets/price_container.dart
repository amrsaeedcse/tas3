import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helpers/widgets/custom_text.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key, required this.subTotal});
  final double subTotal;
  final double tax = 5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 13.5.h),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                text: "\$$subTotal",
                size: 16.sp,
                weight: FontWeight.w500,
              ),
              CustomText(
                text: "Taxes: \$$tax",
                size: 14.sp,
                weight: FontWeight.w400,
              ),
            ],
          ),
          Spacer(),
          CustomText(
            text: "\$${subTotal + tax}",
            size: 16.sp,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
