import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/widgets/customtext.dart';

import '../widgets/customAppBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with AutomaticKeepAliveClientMixin<ProfileScreen> {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: Column(
          children: [
            CustomAppBar(
              pr: Icon(Icons.arrow_back),
              cen: CustomText(
                text: "Profile",
                weight: FontWeight.w700,
                size: 20,
              ),
            ),
            SizedBox(height: 20),
            ClipOval(
              child: Image.network(
                width: 100,
                height: 100,
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF02Jj8T2t7PdkytAw42HDuuSz7yXguKn8Lg&s",
              ),
            ),
            SizedBox(height: 20),
            CustomText(
              text: "Amr Elgamed awe",
              weight: FontWeight.w700,
              size: 30,
            ),
            SizedBox(height: 3),
            CustomText(
              text: "amrabdelazeem117@gmail.com",
              weight: FontWeight.w700,
              size: 20,
              color: Colors.red[200]!,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red[100]),
              onPressed: () {},
              child: CustomText(
                text: "log out",
                weight: FontWeight.w700,
                size: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
