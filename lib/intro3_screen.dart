import 'package:flutter/material.dart';
import 'package:proluxe/intro2_screen.dart';
import 'package:proluxe/intro4_screen.dart';
import 'package:get/get.dart';

class Intro3Screen extends StatelessWidget {
  const Intro3Screen({super.key});
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
                          'Benefits of Joining Proluxe ?',
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
                      'assets/images/benefits_of_proluxe.png',
                      fit: BoxFit.contain,
                      width: 500,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Registered Company and Esteemed Director:',
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
                      ' Proluxe Wellness and Productions is a registered Pvt Ltd company that has passed two board resolutions. Our esteemed director, Dr. Prachiti Punde, has an impressive background, having worked for the FSDO department of Skill India under NSDC. Since 2008, she has been involved in coaching and faculty training. Dr. Punde is also recognized globally, representing India as Mrs. Universe Tolerance and Mrs. India 2020.',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Trademark and Copyright Protection: ',
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
                      'Proluxe has the Trademark of Glamowell Philosophy to secure the rights to this innovative concept. Additionally, we have all copyrights through our Self Published Wellness Redefined Book, Detox body mind intellect book and Soulful Energy Healing book which safeguards our newly invented Glamowell Techniques and philosophy. Additionally patented Generational Theory and Personality Energy Analysis app ',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Extensive Publication Collection:',
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
                      'Proluxe has developed an extensive collection of wellness publications. We have developed a range of engaging materials, including 3 books, 3 self help journals, 2 Glamowell journals, and 3 innovative playing card games. This includes three books and three journals, each spanning 250-300 pages. Additionally, we have curated innovative playing card sets, with 60 cards each. These materials are designed to save time, featuring 10-minute activities per day that align with the Glamowell approach of providing comprehensive wellness solutions within the demands of modern, hectic lifestyles.',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    OutlinedButton(
                      onPressed: () => Get.to(() => const Intro4Screen()),
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
              onPressed: () => Get.to(() => const Intro2Screen()),
            ),
          ),
        ],
      ),
    );
  }
}
