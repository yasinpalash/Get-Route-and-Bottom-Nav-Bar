import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getroute_navbar/routes/app_routes.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Screen tow'),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoute.getViewPage());
                },
                child: const Text('GO'))
          ],
        ),
      ),
    );
  }
}
