import 'package:flutter/material.dart';
import 'package:tirtha/home.dart';

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
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                "assets/Backgrounds/Logo_Tirtha.png",
                height: 250,
              ),
              Text(
                "Tirtha",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontFamily: 'Samarkan',
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
              ),
              const Spacer(),
              SizedBox(
                height: 60,
                width: 60,
                child: ClipOval(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return HomePage();
                          },
                          transitionsBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                            child,
                          ) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;

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
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16), // Adjust padding as needed
                    ),
                    child: const Image(
                      image: AssetImage("assets/Icons/arrow-right.png"),
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
