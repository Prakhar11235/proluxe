import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/forgotpass_screen.dart';
import 'package:proluxe/signup_screen.dart';

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
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: "Email or Phone Number",
                        labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 226,
                        ),
                        TextButton(
                          onPressed: () =>
                              Get.to(() => const ForgotPasswordScreen()),
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontFamily: 'PlayFair',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    /*const SizedBox(
                      height: 16,
                    ),*/
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          //side: const BorderSide(width: 1.5),
                          backgroundColor:
                              const Color.fromARGB(255, 46, 73, 54)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 136),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontFamily: 'PlayFair',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    //const SizedBox(height: 16),
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
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.black),
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
            ],
          ),
        ),
      ),
    );
  }
}
