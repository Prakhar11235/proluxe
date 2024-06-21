import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/home_screen.dart';

class ZoneScreen extends StatelessWidget {
  const ZoneScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Image.asset('assets/images/transparent_o.png'),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 8, left: 24, right: 24, top: 50),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Please click the button and enter the zone.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 46, 73, 54),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => const HomeScreen()),
                      child: Image.asset('assets/images/evolve_zone.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/glamour_zone.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/beauty_zone.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/remedy_zone.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/retail_zone.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/images/packages.png'),
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
