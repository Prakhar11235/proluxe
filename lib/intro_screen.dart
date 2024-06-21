import 'package:flutter/material.dart';
import 'package:proluxe/intro1_screen.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/green_bg.png',
            fit: BoxFit.contain,
            width: 500,
          ),
          Image.asset('assets/images/transparentO.png'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/proluxe_logo_white.png'),
                  const SizedBox(
                    height: 80,
                  ),
                  /*const SizedBox( height: 10, ),*/
                  const Text(
                    'Empowering vital forces the Glamowell way for balancing wellness and Glamour, harmoniously!Conceptualized & Founded by',
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 112, 112),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Dr. Prachiti Punde',
                    style: TextStyle(
                      color: Color.fromARGB(255, 46, 73, 54),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 176,
                  ),
                  OutlinedButton(
                    onPressed: () => Get.to(() => const Intro1Screen()),
                    style: OutlinedButton.styleFrom(
                        //side: const BorderSide(width: 1.5),
                        backgroundColor: const Color.fromARGB(255, 46, 73, 54)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 136),
                      child: Text(
                        'Next',
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
