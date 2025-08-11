import 'package:flutter/cupertino.dart';
import 'package:task/widgets/customtext.dart';

class PriceRow extends StatelessWidget {
  const PriceRow({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: text1, weight: FontWeight.w400, size: 20),
        CustomText(text: text2, weight: FontWeight.w400, size: 20),
      ],
    );
  }
}
