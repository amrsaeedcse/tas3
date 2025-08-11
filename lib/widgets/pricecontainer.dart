import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:task/provider/cartprovider/cartcontrol.dart';
import 'package:task/widgets/pricerow.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final priceController = context.watch<CartControl>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PriceRow(text1: "SubTotal", text2: "\$${priceController.subTotal}"),
        SizedBox(height: 20),
        PriceRow(text1: "Delivery Fee", text2: "\$5.00"),
        SizedBox(height: 20),
        PriceRow(text1: "Taxes", text2: "\$2.50"),
        SizedBox(height: 20),
        PriceRow(text1: "Total", text2: "\$${priceController.subTotal + 7.5}"),
      ],
    );
  }
}
