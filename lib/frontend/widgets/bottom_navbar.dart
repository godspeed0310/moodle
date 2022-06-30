import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color adaptiveColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return FlashyTabBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      showElevation: false,
      onItemSelected: (value) {},
      items: [
        FlashyTabBarItem(
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: adaptiveColor,
          icon: const Icon(
            Icons.home_outlined,
          ),
          title: Text(
            'Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.5.sp,
            ),
          ),
        ),
        FlashyTabBarItem(
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: adaptiveColor,
          icon: Icon(
            Icons.search,
            size: 6.w,
          ),
          title: Text(
            'Search',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.5.sp,
            ),
          ),
        ),
        FlashyTabBarItem(
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: adaptiveColor,
          icon: Icon(
            Icons.notifications_outlined,
            size: 6.w,
          ),
          title: Text(
            'Notifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.5.sp,
            ),
          ),
        ),
        FlashyTabBarItem(
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: adaptiveColor,
          icon: Icon(
            Icons.person_outline,
            size: 6.w,
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.5.sp,
            ),
          ),
        ),
      ],
    );
  }
}
