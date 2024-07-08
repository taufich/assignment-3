import 'package:flutter/material.dart';
import 'package:login_auth/view/widgets/signup.view.dart';
import 'package:login_auth/utils/global.colors.dart';
import 'package:login_auth/view/widgets/button.global.dart';
import 'package:login_auth/view/widgets/social.login.dart';
import 'package:login_auth/view/widgets/text.form.global.dart';
import 'package:get/get.dart';
import 'package:login_auth/themecontroller.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Logo",
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const SizedBox(height: 330),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),

                // Email input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                // Space
                const SizedBox(height: 10),

                // Password
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  obscure: true,
                  textInputType: TextInputType.text,
                ),

                const SizedBox(height: 10),
                // Button
                const ButtonGlobal(),

                const SizedBox(height: 25),

                // Social Login
                const SocialLogin(),

                // Theme Toggle Button
                ElevatedButton(
                  onPressed: () {
                    themeController.toggleTheme();
                  },
                  child: const Text('Toggle Theme'),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupView()),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: GlobalColors.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
