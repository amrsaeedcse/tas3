import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.weight,
    this.color = Colors.black,
    required this.size,
  });
  final String text;
  final FontWeight weight;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      maxLines: 2,
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
