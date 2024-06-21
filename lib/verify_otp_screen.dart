import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:proluxe/get_otp_screen.dart';
import 'package:proluxe/intro_screen.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});
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
                () => const GetOTPScreen(),
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
                        "Verify OTP",
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
                    "6 Digit OTP has been sent to you on 9177",
                    style: TextStyle(
                      fontFamily: 'PlayFair',
                      color: Color.fromARGB(255, 99, 99, 99),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  OtpTextField(
                    numberOfFields: 6,
                    showFieldAsBox: true,
                    borderRadius: BorderRadius.circular(50),
                    focusedBorderColor: Colors.black,
                    fillColor: const Color.fromARGB(153, 158, 158, 158),
                    filled: true,
                    fieldWidth: 50,
                  ),
                  const SizedBox(height: 40),
                  OutlinedButton(
                    onPressed: () => Get.to(() => IntroScreen()),
                    style: OutlinedButton.styleFrom(
                        //side: const BorderSide(width: 1.5),
                        backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 110),
                      child: Text(
                        'Verify OTP',
                        style: TextStyle(
                            fontFamily: 'PlayFair',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text(
                      'Resend OTP',
                      style: TextStyle(
                          fontFamily: 'PlayFair',
                          color: Color.fromARGB(255, 99, 99, 99),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const Text(
                    'Resend in 00:30',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
