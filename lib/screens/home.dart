import 'package:demo/constants/app_colors.dart';
import 'package:demo/constants/app_icons.dart';
import 'package:demo/constants/app_strings.dart';
import 'package:demo/constants/text_style.dart';
import 'package:demo/screens/user_detail.dart';
import 'package:demo/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Selected index to manage the active tab
  int selectedIndex = 0;

// Method to handle Bottom Navigation Bar item taps

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(selectedIndex, onItemTapped),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage('assets/images/sunset.jpg'),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AppStrings.strollBonfire,
                        style: AppTextStyles.heading),
                    Icon(
                      AppIcons.dropDown,
                      size: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.timer_sharp,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '01h 00m',
                      style: AppTextStyles.subheading,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset(
                      AppIcons.user,
                      // ignore: deprecated_member_use
                      color: AppColors.light,
                      height: 30,
                    ),
                    Text(
                      '100',
                      style: AppTextStyles.subheading,
                    ),
                  ],
                ),
              ],
            ),
            UserDetailScreen(),
            Positioned(
              top: 360,
              left: 8,
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.backGroundColor),
                child: Image.asset(
                  'assets/images/person.png',
                  alignment: Alignment.center,
                ),
              ),
            ),
            Positioned(
              top: 368,
              left: 54,
              child: Container(
                height: 22,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.backGroundColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Text(
                  'Angelina, 28',
                  style: AppTextStyles.caption,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
