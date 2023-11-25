import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/rendering.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Tirtha',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 1,
              // pause: Durations.extralong1,
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.settings,
                      color: Color.fromARGB(255, 255, 249, 240)),
                ),
              )
            ]),
        bottomNavigationBar: const GNav(
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(icon: Icons.my_location_outlined, text: 'TBD'),
            GButton(icon: Icons.message, text: 'TBD')
          ],
        ));
  }
}
