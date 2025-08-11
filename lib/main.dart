import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task/bloc/viewcontrol/viewcontrol_cubit.dart';
import 'package:task/provider/cartprovider/cartcontrol.dart';
import 'package:task/screens/navscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CartControl())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MultiBlocProvider(
          providers: [BlocProvider(create: (context) => ViewControlCubit())],
          child: NavScreen(),
        ),
      ),
    );
  }
}
