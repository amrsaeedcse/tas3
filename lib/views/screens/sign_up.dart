import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/auth_control/sign_in/sign_in_cubit.dart';
import 'package:task/controllers/auth_control/sign_up/sign_up_cubit.dart';
import 'package:task/helpers/widgets/show_snack.dart';
import 'package:task/models/user/user_model.dart';
import 'package:task/views/screens/sign_in.dart';

import '../../helpers/theme/appcolors.dart';
import '../../helpers/widgets/custom_click_text.dart';
import '../../helpers/widgets/custom_text.dart';
import '../../helpers/widgets/gap.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();

  TextEditingController pass = TextEditingController();

  TextEditingController name = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  void checkValidation() {
    if (_formKey.currentState!.validate()) {
      ///this local sign
      // List<UserModel> users = UserModel.users
      //     .where((element) => element.email == email.text.trim())
      //     .toList();
      // if (users.isNotEmpty) {
      //   ShowSnack.showSnack(context, "Email is already exists");
      // } else {
      //   UserModel user = UserModel(
      //     name: name.text.trim(),
      //     pass: pass.text.trim(),
      //     email: email.text.trim(),
      //   );
      //   UserModel.users.add(user);
      //   ShowSnack.showSnack(context, "Email created successfully");
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => SignIn()),
      //   );
      // }
      context.read<SignUpCubit>().signUp(
        UserModel(
          image: null,
          name: name.text.trim(),
          email: email.text.trim(),
        ),
        pass.text.trim(),
      );
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
                      hint: "Name",
                      cont: name,
                      type: InputType.name,
                    ),
                    Gap(h: 24.h),
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
                    BlocConsumer<SignUpCubit, SignUpState>(
                      listener: (context, state) {
                        if (state is SignUpSuccess) {
                          context.pushReplacement("/sign_in");
                          ShowSnack.showSnack(
                            context,
                            "Email created successfully",
                          );
                        } else if (state is SignUpFailure) {
                          ShowSnack.showSnack(context, state.errorMessage);
                        }
                      },
                      builder: (context, state) {
                        return CustomButton(
                          onTap: state is SignInLoading
                              ? () {}
                              : checkValidation,
                          text: "create",
                          loading: state is SignUpLoading ? true : null,
                        );
                      },
                    ),
                    Gap(h: 16.h),
                    Center(
                      child: CustomClickText(
                        text: "Sign In",
                        onTap: () {
                          context.pushNamed("sign_in");
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
