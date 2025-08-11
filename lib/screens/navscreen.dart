import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screens/cartscreen.dart';
import 'package:task/screens/homepage.dart';
import 'package:task/screens/profilescreen.dart';
import 'package:task/widgets/bottomnavbar.dart';
import 'package:task/widgets/customtext.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
      pageController.animateToPage(
        currentIndex,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    });
  }

  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(
        onTap: onTap,
        currentIndex: currentIndex,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [HomeScreen(), CartScreen(), ProfileScreen()],
      ),
    );
  }
}
