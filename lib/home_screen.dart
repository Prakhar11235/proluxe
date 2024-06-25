import 'package:flutter/material.dart';
import 'package:proluxe/select_assessment_screen.dart';
import 'package:get/get.dart';
import 'package:proluxe/src/repository/authentication_repository/authentication_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: AppBar(
                leading: IconButton(
                  onPressed: () {
                    AuthenticationRepository.instance.logout();
                  },
                  icon: Image.asset('assets/images/leading.png'),
                ),
                title: const Text(
                  'Good Afternoon!',
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
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () => Get.to(() => const SelectAssessmentScreen()),
                      child: Image.asset(
                        'assets/images/know_yourself.png',
                        fit: BoxFit.fill,
                        width: 400,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Signature Courses',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset('assets/images/sig_magnetic.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/sig_wellness.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/sig_wellness1.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/sig_detox.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/sig_soulful.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/sig_kids.png'),
                          const SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Mini Courses',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset('assets/images/mini_abc.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/mini_deep.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/mini_complete.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/mini_detox.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/mini_intellect.png'),
                          const SizedBox(
                            width: 16,
                          ),
                          Image.asset('assets/images/mini_mindful.png'),
                          const SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color.fromARGB(255, 25, 44, 31),
          ),
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            indicatorColor: Color.fromARGB(0, 25, 1, 1),
            backgroundColor: Color.fromARGB(0, 22, 1, 2),
            destinations: [
              NavigationDestination(
                  icon: Image.asset('assets/images/home.png'), label: 'Home'),
              NavigationDestination(
                  icon: Image.asset('assets/images/school.png'), label: ''),
              NavigationDestination(
                  icon: Image.asset('assets/images/trophy.png'), label: ''),
              NavigationDestination(
                  icon: Image.asset('assets/images/calendar.png'), label: ''),
              NavigationDestination(
                  icon: Image.asset('assets/images/account.png'), label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
