import 'package:flutter/material.dart';
import 'package:proluxe/intro1_screen.dart';
import 'package:get/get.dart';
import 'package:proluxe/intro3_screen.dart';

class Intro2Screen extends StatelessWidget {
  const Intro2Screen({super.key});
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
                          'Current Proluxe Reach...',
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
                      'assets/images/current_proluxe_research.png',
                      fit: BoxFit.contain,
                      width: 500,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      children: [
                        Text(
                          'State-of-the-Art Facility in Pune:',
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
                      'Our upcoming Glamowell Experience Centre, located in Baner, Pune, spans an impressive 10,000 square feet. This facility boasts modern amenities and cutting-edge infrastructure, offering a Private Screening Theatre, Chroma Wall, Photography Studios, Film Productions, Glamowell Academy, and a Spa & Salon. With these facilities, we are well-prepared to transform lives glamorously and provide our clientele with an exceptional wellness experience.',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Comprehensive Marketing Collaterals:',
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
                      'Proluxe has developed a range of marketing collaterals to effectively showcase our offerings. These materials include a coffee book, five departmental brochures, standees, flyers, packages, and never-before-seen deals. Additionally, we offer branded merchandise that serves as a tangible representation of our commitment to wellness and luxury.',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Global and National Reach:',
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
                      'Proluxe has established a strong global presence, currently operating in six countries. We have extensive partnerships with organizations in Japan and Korea, fostering cross-cultural collaboration and exchange. On a national level, we have lined up workshops for leaders, doctors, and corporates in Latur, Nashik, Aurangabad, Nagpur, Chandrapur, Solapur, and Buldhana, ensuring our mission of transforming lives reaches various regions in India',
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
                      onPressed: () => Get.to(() => const Intro3Screen()),
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
              onPressed: () => Get.to(() => const Intro1Screen()),
            ),
          ),
        ],
      ),
    );
  }
}
