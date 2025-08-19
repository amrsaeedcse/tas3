import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/helpers/widgets/custom_click_text.dart';
import 'package:task/helpers/widgets/custom_text.dart';
import 'package:task/helpers/widgets/gap.dart';
import 'package:task/helpers/widgets/show_snack.dart';
import 'package:task/models/user/user_model.dart';
import 'package:task/views/screens/home_page.dart';
import 'package:task/views/screens/sign_up.dart';
import 'package:task/views/widgets/custom_button.dart';
import 'package:task/views/widgets/custom_text_field.dart';

import '../../helpers/theme/appcolors.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  void checkValidation() {
    if (_formKey.currentState!.validate()) {
      List<UserModel> users = UserModel.users
          .where(
            (element) =>
                email.text.trim() == element.email &&
                pass.text.trim() == element.pass,
          )
          .toList();
      if (users.isEmpty) {
        ShowSnack.showSnack(context, "Email not found");
      } else {
        ShowSnack.showSnack(context, "Welcome ${users[0].name}");
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.backGroundPrimary,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/logos/logo.png",
              height: 218.h,
              fit: BoxFit.cover,
            ),
            Gap(h: 20.h),
            Column(
              children: [
                CustomText(
                  text: "ShopSmart",
                  size: 22.sp,
                  weight: FontWeight.bold,
                ),
              ],
            ),
            Gap(h: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      hint: "Email",
                      cont: email,
                      type: InputType.email,
                    ),
                    Gap(h: 24.h),
                    CustomTextField(
                      hint: "Password",
                      cont: pass,
                      type: InputType.password,
                    ),
                    Gap(h: 24.h),
                    CustomButton(onTap: checkValidation, text: "Login"),
                    Gap(h: 16.h),
                    Center(
                      child: CustomClickText(
                        text: "Forgot Password?",
                        onTap: () {},
                      ),
                    ),
                    Gap(h: 20.h),
                    Center(
                      child: CustomClickText(
                        text: "Sign Up",
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
