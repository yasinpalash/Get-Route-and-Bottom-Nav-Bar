import 'package:get/get.dart';
import 'package:getroute_navbar/screen/home_screen/details_screen.dart';
import 'package:getroute_navbar/screen/nav_bar/main_bottom_nav_bar.dart';
import 'package:getroute_navbar/screen/screen_2/view_part.dart';

class AppRoute {
  static String navBar = "/";
  static String detailsPage = "/detailsPage";
  static String viewPage = "/viewPage";

  static String getNavBarRoute() => navBar;
  static String getDetailsPage() => detailsPage;
  static String getViewPage() => viewPage;
  static List<GetPage> routes = [
    GetPage(name: navBar, page: () => const MainBottomNavBar()),
    GetPage(name: viewPage, page: () => const ViewPart()),
    GetPage(name: detailsPage, page: () => const DetailsScreen()),
  ];
}
