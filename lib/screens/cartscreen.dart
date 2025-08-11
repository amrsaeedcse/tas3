import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:task/widgets/cartlist.dart';
import 'package:task/widgets/counter.dart';
import 'package:task/widgets/customAppBar.dart';
import 'package:task/widgets/customtext.dart';
import 'package:task/widgets/pricecontainer.dart';
import 'package:task/widgets/pricerow.dart';
import 'package:task/widgets/views/helpers/foodrow.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with AutomaticKeepAliveClientMixin<CartScreen> {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              pr: Icon(Icons.arrow_back),
              cen: CustomText(text: "Cart", weight: FontWeight.w700, size: 20),
            ),
            SizedBox(height: 20),
            SizedBox(height: 300, child: CartList()),
            SizedBox(height: 20),
            PriceContainer(),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                backgroundColor: Colors.red,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "CheckOut",
                    weight: FontWeight.w700,
                    size: 20,
                    color: Colors.white,
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
