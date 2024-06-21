import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/login_screen.dart';
//import 'package:proluxe/get_otp_screen.dart';
import 'package:proluxe/src/features/authentication/controllers/signup_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(context) {
    final controller = Get.put(SignUpController());
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/transparentO.png'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Center(
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
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: controller.fullName,
                          expands: false,
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            labelText: "DD/MM/YYYY(optional)",
                            labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            labelText: "Occupation(optional)",
                            labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: controller.email,
                          expands: false,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: controller.password,
                          expands: false,
                          decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: const Icon(Icons.visibility_off),
                            labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            labelText: "Confirm password",
                            suffixIcon: const Icon(Icons.visibility_off),
                            labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(
                            controller.email.text.trim(),
                            controller.password.text.trim());
                      }
                    } /*() => Get.to(() => const GetOTPScreen())*/,
                    style: OutlinedButton.styleFrom(
                        //side: const BorderSide(width: 1.5),
                        backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 136),
                      child: Text(
                        'Enroll',
                        style: TextStyle(
                            fontFamily: 'PlayFair',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
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
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.black),
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
