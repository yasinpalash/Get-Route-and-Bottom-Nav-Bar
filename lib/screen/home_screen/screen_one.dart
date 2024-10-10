import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getroute_navbar/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoute.getDetailsPage());
              },
              child: const Text('Go to Details Page'),
            )
          ],
        ),
      ),
    );
  }
}
