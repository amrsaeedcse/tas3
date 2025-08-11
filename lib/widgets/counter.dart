import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/models/cart/cartmodel.dart';
import 'package:task/provider/cartprovider/cartcontrol.dart';
import 'package:task/widgets/customtext.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.cartModel});
  final CartModel cartModel;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 1;
  //just cus it always added with one quantity if you add it with specific quantity write:
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   counter=widget.cartModel.quantity;
  // }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          shape: CircleBorder(),

          color: Colors.red[200],
          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              setState(() {
                counter++;
                widget.cartModel.quantity++;
                context.read<CartControl>().setPriceCounter();
              });
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Center(child: Icon(Icons.add)),
            ),
          ),
        ),
        SizedBox(width: 5),
        CustomText(text: counter.toString(), weight: FontWeight.w700, size: 12),
        SizedBox(width: 5),
        Material(
          shape: CircleBorder(),
          color: Colors.red[200],

          child: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              if (counter != 1) {
                setState(() {
                  counter--;
                  widget.cartModel.quantity--;
                  context.read<CartControl>().setPriceCounter();
                });
              }
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Center(child: Icon(Icons.remove)),
            ),
          ),
        ),
      ],
    );
  }
}
