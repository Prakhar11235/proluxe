import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/intro_screen.dart';
import 'package:proluxe/intro2_screen.dart';

class Intro1Screen extends StatelessWidget {
  const Intro1Screen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            child: BackButton(
              onPressed: () => Get.to(() => const IntroScreen()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset('assets/images/proluxe_logo_dark.png'),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'WITH A WIDE PALLET OFFERING',
                    style: TextStyle(
                      color: Color.fromARGB(255, 144, 144, 144),
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Wellness',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 75, 65),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 205, 149, 2),
                    endIndent: 200,
                    thickness: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Wellness Coaching programs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Hair & Skin Treatment Clinic',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Wellness Products & Publication',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "Doctor’s Consultations",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Wellness Spa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Productions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 58, 75, 65),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 205, 149, 2),
                    indent: 200,
                    thickness: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Private Screening Theatre',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Event Hall',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Chroma Studio',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Salon & Nail Art',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Visual Production',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  OutlinedButton(
                    onPressed: () => Get.to(() => const Intro2Screen()),
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
