import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proluxe/home_screen.dart';

class SelectAssessmentScreen extends StatelessWidget {
  const SelectAssessmentScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: BackButton(
                  onPressed: () => Get.to(() => const HomeScreen()),
                ),
              ),
              title: const Text(
                'Select Assessment',
                style: TextStyle(
                    color: Color.fromARGB(255, 46, 73, 54),
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: SizedBox(
                                  height: 600,
                                  width: 400,
                                  child: Image.asset(
                                      'assets/images/cost_plans.png')),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/magnetic_personality.png',
                          fit: BoxFit.fill,
                          width: 400,
                        ),
                      ),

                      const SizedBox(
                        width: 16,
                      ),
                      //Image.asset('assets/images/magnetic_personality.png'),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assets/images/energy_healing.png'),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
