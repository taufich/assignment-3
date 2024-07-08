import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_auth/utils/global.colors.dart';
import 'package:login_auth/themecontroller.dart';
import 'package:login_auth/view/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    Timer(const Duration(seconds: 1), () {
      Get.to(LoginView());
    });

    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                themeController.toggleTheme();
              },
              child: const Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
