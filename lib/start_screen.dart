import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/signup_screen.dart';
import 'package:lottie/lottie.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  //final void Function() start;
  @override
  Widget build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Welcome to'),
              const SizedBox(
                height: 32,
              ),
              Image.asset('assets/images/proluxe.png'),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "WORLD's FIRST & THE ONLY BRAND IN GLOMOWELL INDUSTRY",
                style: TextStyle(fontFamily: 'PlayFair'),
                textAlign: TextAlign.center,
              ),
              Lottie.network(
                  'https://lottie.host/a1d73cd6-249f-421d-ba43-6ebf7abb65c0/GboUfNuwok.json'),
              OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1.5),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 88),
                  child: Text(
                    'Start',
                    style: TextStyle(
                        fontFamily: 'PlayFair',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
