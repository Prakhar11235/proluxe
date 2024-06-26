import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/signup_screen.dart';
import 'package:proluxe/src/common_widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                children: [
                  Text(
                    "Log In",
                    style: TextStyle(
                      fontFamily: 'PlayFair',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const LoginFormWidget(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontFamily: 'PlayFair'),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                          fontFamily: 'PlayFair',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
