import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 241),
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            "assets/Backgrounds/tirthalogo.png",
            height: 250,
          )
        ],
      )),
    );
  }
}
