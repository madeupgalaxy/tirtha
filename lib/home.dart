import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:tirtha/pages/chatbox.dart';
import 'package:tirtha/pages/locations.dart';
import 'package:tirtha/pages/mainhomepage.dart';
import 'package:tirtha/pages/maps.dart';
import 'package:tirtha/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int _pageIndex = 0;
  final List<Widget> _tabList = [
    MainHomePage(),
    Locations(),
    Chatbox(),
    MapPage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 249, 241),
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
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigate to the SettingsPage with slide animation
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return SettingsPage();
                  },
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    const begin = Offset(0.0, -1.0);
                    const end = Offset.zero;
                    var tween = Tween(begin: begin, end: end);
                    var offsetAnimation = animation.drive(
                      Tween(begin: begin, end: end).chain(
                        CurveTween(
                          curve: Curves.easeInOut,
                        ),
                      ),
                    );
                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.settings,
                  color: Color.fromARGB(255, 255, 249, 240)),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        children: _tabList,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: Color.fromARGB(255, 248, 226, 198),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: Color.fromARGB(255, 248, 182, 95),
            currentIndex: _pageIndex,
            onTap: (int index) {
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 150),
                curve: Curves.easeInOut,
              );
            },
            selectedIconTheme: IconThemeData(size: 30),
            unselectedIconTheme: IconThemeData(size: 18),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.map_outlined), label: 'Places'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message), label: 'Saarthi'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_city), label: 'Guide'),
            ],
          ),
        ),
      ),
    );
  }
}
