import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/helpers/theme/appcolors.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    required this.text,
    this.color,
    required this.size,
    required this.weight,
    this.maxLines,
  });
  final String text;
  final Color? color;
  final double size;
  final FontWeight weight;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      maxLines: maxLines,
      text,
      style: GoogleFonts.inter(
        color: color ?? AppColors.textPrimary,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
