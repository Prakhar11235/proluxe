import 'package:flutter/material.dart';
import 'package:proluxe/intro3_screen.dart';
import 'package:get/get.dart';
import 'package:proluxe/zone_screen.dart';

class Intro4Screen extends StatelessWidget {
  const Intro4Screen({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 8, left: 24, right: 24, top: 90),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'How Can I achieve this ?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 58, 75, 65),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      'assets/images/achieve_this.png',
                      fit: BoxFit.contain,
                      width: 500,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Text(
                          'We ease this process',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        "Every member goes through detailed screenings right from physical personality (Cognitive bias analysis,EQ & emotional scale analysis,Goal congruence analysis) to character as rock solid foundation analysis (energy blocker analysis,SELF stages analysis, life values & life balance worksheet,Present moment /mindful Awareness analysis"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Evolve Zone of Proluxe, World’s First revolutionary Glamowell Academy for life transformation services developed by Dr. Prachiti Punde. At Evolve Zone, we offer a wide range of programs designed to cater to both individuals, groups as well as corporate seeking holistic wellness transformation services. ',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "The 2:2 Kokoro- First 2 is body and spirit (with ego ,mind ) and the other two is soul and psyche!So WELLNESS DEFINED is your BODY AND SPIRIT SO WHEREAS WELLNESS REDEFINED IS SOUL AND PSYCHE.",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'In conclusion, glamowell involves taking care of multiple dimensions of well-being, by using the 2:2 human Kokoro Humans can achieve a state of flow where they experience joy and a sense of purpose in life fulfilment with ease and will be better able to relish modern glamorous revolutions with fine balance of wellness in their everyday lives .',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Dr Prachiti Punde, the mastermind behind this revolutionary concept - Glamowell, takes you on a journey towards mastering desired area through profound insights and action based activities.',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    OutlinedButton(
                      onPressed: () => Get.to(() => const ZoneScreen()),
                      style: OutlinedButton.styleFrom(
                          //side: const BorderSide(width: 1.5),
                          backgroundColor:
                              const Color.fromARGB(255, 46, 73, 54)),
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
          ),
          Positioned(
            top: 50,
            child: BackButton(
              onPressed: () => Get.to(() => const Intro3Screen()),
            ),
          ),
        ],
      ),
    );
  }
}
