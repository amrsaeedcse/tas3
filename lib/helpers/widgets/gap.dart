import 'package:flutter/cupertino.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, required this.h});
  final double h;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: h);
  }
}
