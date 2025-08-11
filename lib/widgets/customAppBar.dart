import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.pr, required this.cen, this.suf});
  final Widget? pr;
  final Widget cen;
  final Widget? suf;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        pr != null
            ? Align(alignment: Alignment.centerLeft, child: pr)
            : SizedBox.shrink(),
        Align(alignment: Alignment.center, child: cen),
        suf != null
            ? Align(alignment: Alignment.centerRight, child: suf)
            : SizedBox.shrink(),
      ],
    );
  }
}
