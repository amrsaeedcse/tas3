import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/auth_control/google_sign_in/google_sign_in_cubit.dart';
import 'package:task/controllers/auth_control/sign_in/sign_in_cubit.dart';
import 'package:task/controllers/auth_control/sign_up/sign_up_cubit.dart';
import 'package:task/controllers/cart_bloc/cart_control_cubit.dart';
import 'package:task/controllers/sorting/sort_control.dart';
import 'package:task/helpers/app_routers.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/service_locator.dart';
import 'package:task/views/screens/sign_in.dart';

import 'package:task/views/screens/wrapper.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => SortByControl()),
            BlocProvider(create: (context) => CartControlCubit()),
            BlocProvider(create: (context) => SignInCubit()),
            BlocProvider(create: (context) => SignUpCubit()),
            BlocProvider(create: (context) => GoogleSignInCubit()),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: AppColors.textPrimary),
              ),
            ),
            debugShowCheckedModeBanner: false,
            // home: child,
          ),
        );
      },
      // child: SignIn(),
    );
  }
}
