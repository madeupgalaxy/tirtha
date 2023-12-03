import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

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
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        color: Colors.orange),
                  ),
                  RotateAnimatedText('Places of Significance',
                      textStyle: TextStyle(
                          fontFamily: 'Samarkan',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.orange)),
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
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/Backgrounds/entrygate.jpg'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                          .withOpacity(0.2), // Adjust the opacity as needed
                    ),
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    child: Text(
                      'Entry Gate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Backgrounds/banganga.jpg'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Ban Ganga',
                        style: TextStyle(
                            color: Color.fromARGB(255, 254, 254, 141),
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Samarkan'),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Backgrounds/Charan-Paduka.jpg'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Charan Paduka',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 62),
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Samarkan'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Backgrounds/ardhkuwari-mata-gufa-a.jpg'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'ArdhKuwari',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 237, 213),
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Samarkan'),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/Backgrounds/bhairomandir.jpg'), // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Bhairon Mandir',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Samarkan'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
            ],
          )
        ]));
  }
}
