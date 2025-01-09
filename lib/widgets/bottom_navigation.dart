import 'package:demo/constants/app_colors.dart';
import 'package:demo/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//Todo bottom Navigation Bar
bottomNavigation(selectedIndex, onItemTapped) {
  return BottomNavigationBar(
    backgroundColor: AppColors.backGroundColor,
    currentIndex: selectedIndex,
    onTap: onItemTapped,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: icons(0, AppIcons.card),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: icons(1, AppIcons.bonfire),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: icons(1, AppIcons.chat),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: icons(1, AppIcons.user),
        label: '',
      ),
    ],
  );
}

icons(int i, String iconData) {
  return Stack(
    children: [
      SizedBox(
        width: 50,
        child: SvgPicture.asset(
          iconData,
        ),
      ),
      Positioned(
          top: 1,
          right: 1,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.buttons,
              borderRadius: BorderRadius.circular(30),
            ),
            height: 12,
            width: 15,
            alignment: Alignment.center,
            child: Text(
              i == 0
                  ? "1"
                  : i == 1
                      ? "3"
                      : i == 2
                          ? "23"
                          : i == 3
                              ? "4"
                              : "2",
              style: TextStyle(fontSize: 8),
            ),
          )),
    ],
  );
}
