import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getroute_navbar/routes/app_routes.dart';
import 'details_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Home Screen'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                      ));
                      // Get.toNamed(AppRoute.getDetailsPage());
                    },
                    child: const Text('Go to Details Page'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

