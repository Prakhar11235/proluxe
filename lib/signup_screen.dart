import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/login_screen.dart';
import 'package:proluxe/src/common_widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/transparentO.png'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: 'PlayFair',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Discover a journey to a healthier and happier you with Proluxe",
                      style: TextStyle(
                        fontFamily: 'PlayFair',
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const SignupFormWidget(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(fontFamily: 'PlayFair'),
                          textAlign: TextAlign.center,
                        ),
                        TextButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                                fontFamily: 'PlayFair',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
    /*return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Signup',
          textAlign: TextAlign.left,
        ),
        Container(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/transparentO.png')),
        Center(
          child: Text("discover a journey"),
        ),
        Text('asd'),
        Text('asd'),
      ],
    );
  }
}*/
