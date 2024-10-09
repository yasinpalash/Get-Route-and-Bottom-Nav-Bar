import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getroute_navbar/screen/screen_2/screen_2.dart';
import 'package:getroute_navbar/screen/screen_3/screen_3.dart';
import 'package:getroute_navbar/screen/screen_one/screen_one.dart';

import 'main_bottom_nav_bar_controller.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  final List<Widget> screens = const [
    ScreenOne(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<MainBottomNavBarController>(
        builder: (bottomController) => screens[bottomController.currentIndex],
      ),
      bottomNavigationBar:
          GetX<MainBottomNavBarController>(builder: (bottomController) {
        return BottomNavigationBar(
          currentIndex: bottomController.currentIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: bottomController.changeIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Carts'),
          ],
        );
      }),
    );
  }
}
