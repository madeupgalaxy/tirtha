import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/rendering.dart';
import 'package:tirtha/pages/chatbox.dart';
import 'package:tirtha/pages/locations.dart';
import 'package:tirtha/pages/mainhomepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  final List<Widget> _tabList = [
    MainHomePage(),
    Locations(),
    Chatbox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 249, 241),
          title: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Tirtha',
                textStyle: const TextStyle(
                  fontFamily: 'Samarkan',
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
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
      body: Stack(
        children: [
          _tabList.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Color.fromARGB(255, 37, 37, 37),
                  showSelectedLabels: true,
                  showUnselectedLabels: false,
                  backgroundColor: Colors.orangeAccent,
                  currentIndex: _pageIndex,
                  onTap: (int index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.map_outlined), label: 'Map'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message), label: 'Message'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
