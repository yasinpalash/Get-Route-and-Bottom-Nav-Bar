
import 'package:get/get.dart';

class MainBottomNavBarController extends GetxController {
  // RxInt is used for reactivity.
  var _selectedIndex = 0.obs;

  int get currentIndex => _selectedIndex.value;


  void changeIndex(int index) {
    _selectedIndex.value=index;
  }
}