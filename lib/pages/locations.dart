import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tirtha/pages/locations/bhawan.dart';
import 'package:tirtha/pages/locations/bhaironmandir.dart';
import 'package:tirtha/pages/locations/banganga.dart';
import 'package:tirtha/pages/locations/ardhkuwari.dart';
import 'package:tirtha/pages/locations/charanpaduka.dart';
import 'package:tirtha/pages/locations/Entrygate.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 240),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 40,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText(
                    'प्रमुख स्थल',
                    textStyle: TextStyle(
                      fontFamily: 'Samarkan',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.orange,
                    ),
                  ),
                  RotateAnimatedText(
                    'Places of Significance',
                    textStyle: TextStyle(
                      fontFamily: 'Samarkan',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.orange,
                    ),
                  ),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildClickableContainer(
                    imagePath: 'assets/Backgrounds/Entry_gate.jpg',
                    title: 'Entry Gate',
                    onTap: () {
                      // Navigate to the Bhawan details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EntryGate(),
                        ),
                      );
                    },
                  ),
                  buildClickableContainer(
                    imagePath: 'assets/Backgrounds/banganga.jpg',
                    title: 'Ban Ganga',
                    onTap: () {
                      // Navigate to the Bhawan details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BanGanga(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildClickableContainer(
                    imagePath: 'assets/Backgrounds/Charan-Paduka.jpg',
                    title: 'Charan Paduka',
                    onTap: () {
                      // Navigate to the Bhawan details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharanPaduka(),
                        ),
                      );
                    },
                  ),
                  buildClickableContainer(
                    imagePath: 'assets/Backgrounds/ardhkuwari-mata-gufa-a.jpg',
                    title: 'ArdhKuwari',
                    onTap: () {
                      // Navigate to the Bhawan details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArdhKuwari(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildClickableContainer(
                    imagePath: 'assets/Backgrounds/Bhawan.jpeg',
                    title: 'Bhawan',
                    onTap: () {
                      // Navigate to the Bhawan details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BhawanDetailsPage(),
                        ),
                      );
                    },
                  ),
                  buildClickableContainer(
                    imagePath: 'assets/Backgrounds/bhairomandir.jpg',
                    title: 'Bhairon Mandir',
                    onTap: () {
                      // Navigate to the Bhawan details page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BhaironMandir(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ],
      ),
    );
  }
}

class buildClickableContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function()? onTap;

  buildClickableContainer({
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: 200.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            width: 200.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
