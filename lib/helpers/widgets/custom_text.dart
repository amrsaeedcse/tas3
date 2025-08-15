import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/helpers/theme/appcolors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    required this.size,
    required this.weight,
  });
  final String text;
  final Color? color;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        color: color ?? AppColors.textPrimary,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
