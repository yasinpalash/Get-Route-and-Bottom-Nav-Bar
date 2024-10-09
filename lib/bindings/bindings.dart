import 'package:get/get.dart';

import '../screen/nav_bar/main_bottom_nav_bar_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavBarController());
  }
}