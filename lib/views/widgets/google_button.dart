import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/auth_control/google_sign_in/google_sign_in_cubit.dart';

import '../../helpers/theme/appcolors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../helpers/widgets/show_snack.dart';
import '../screens/wrapper.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GoogleSignInCubit, GoogleSignInState>(
      listener: (context, state) {
        if (state is GoogleSignInSuccess) {
          Navigator.pop(context);
          Navigator.of(
            context,
          ).pushReplacement(MaterialPageRoute(builder: (context) => Wrapper()));
          ShowSnack.showSnack(context, "Welcome to ShopSmart");
        } else if (state is GoogleSignInFailure) {
          Navigator.pop(context);
          ShowSnack.showSnack(context, state.errorMessage);
        } else if (state is GoogleSignInLoading) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: AppColors.backGroundPrimary,
              contentPadding: EdgeInsets.zero,
              content: Container(
                height: 200.h,
                child: Center(
                  child: CupertinoActivityIndicator(
                    color: AppColors.backGroundSecondary,
                  ),
                ),
              ),
            ),
          );
        }
      },
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          backgroundColor: AppColors.backGroundSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8.r),
            side: BorderSide.none,
          ),
        ),
        onPressed: () {
          context.read<GoogleSignInCubit>().signInWithGoogle();
        },
        child: Icon(
          FontAwesomeIcons.google,
          color: AppColors.backGroundPrimary,
        ),
      ),
    );
  }
}
