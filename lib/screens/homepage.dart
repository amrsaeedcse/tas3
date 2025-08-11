import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/viewcontrol/viewcontrol_cubit.dart';
import 'package:task/widgets/customAppBar.dart';
import 'package:task/widgets/customtext.dart';
import 'package:task/widgets/views/foodlistview.dart';
import 'package:task/widgets/searchbar.dart';
import 'package:task/widgets/slider.dart';

import '../widgets/chooseview.dart';
import '../widgets/views/foodgridview.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              cen: CustomText(
                text: "FoodDelivery ",
                weight: FontWeight.w700,
                size: 20,
              ),
              suf: Icon(Icons.shopping_cart),
            ),
            SizedBox(height: 20),
            CustomSearchBar(),
            SizedBox(height: 22),
            CustomSlider(),
            SizedBox(height: 30),
            CustomText(
              text: "Featured Items",
              weight: FontWeight.w700,
              size: 25,
            ),
            SizedBox(height: 10),
            ChooseView(),
            SizedBox(height: 10),
            BlocBuilder<ViewControlCubit, ViewControlState>(
              builder: (context, state) {
                return state is ViewControlList
                    ? FoodListView()
                    : FoodGridView();
              },
            ),
          ],
        ),
      ),
    );
  }
}
