import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/signup_screen.dart';
import 'package:proluxe/verify_otp_screen.dart';

class GetOTPScreen extends StatelessWidget {
  const GetOTPScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 760,
            child: Image.asset('assets/images/bottom_left.png'),
          ),
          Positioned(
            right: 0,
            child: Image.asset('assets/images/transparent_o.png'),
          ),
          Positioned(
            top: 50,
            child: BackButton(
              onPressed: () => Get.to(
                () => const SignupScreen(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Verification",
                        style: TextStyle(
                          fontFamily: 'PlayFair',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "We will sent you a One Time Password on your Mobile Number",
                    style: TextStyle(
                      fontFamily: 'PlayFair',
                      color: Color.fromARGB(255, 99, 99, 99),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                    child: TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: "Phone Number",
                        labelStyle: const TextStyle(fontFamily: 'PlayFair'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  OutlinedButton(
                    onPressed: () => Get.to(() => const VerifyOtpScreen()),
                    style: OutlinedButton.styleFrom(
                        //side: const BorderSide(width: 1.5),
                        backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 130),
                      child: Text(
                        'Get OTP',
                        style: TextStyle(
                            fontFamily: 'PlayFair',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
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
