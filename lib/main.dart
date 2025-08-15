import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task/controllers/fav_controller.dart';
import 'package:task/helpers/theme/appcolors.dart';
import 'package:task/views/screens/wrapper_screen.dart';

void main() {
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
        return ChangeNotifierProvider(
          create: (context) => FavController(),
          child: MaterialApp(
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: AppColors.textPrimary),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: child,
          ),
        );
      },
      child: WrapperScreen(),
    );
  }
}
