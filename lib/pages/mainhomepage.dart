import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  bool isExpanded = false;
  String information =
      'Shri Mata Vaishno Devi Temple and Vaishno Devi Bhavan, is a Hindu temple dedicated to goddess Vaishno Devi, one of the major forms of the supreme goddess Adishakti. Shakta traditions consider the temple as one of the 52 Maha (major) Shakti Peethas dedicated to Durga.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 249, 241),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image:
                            AssetImage('assets/Backgrounds/vaishno-devi.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 30, // Set the height according to your requirements
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                      255, 250, 238, 222), // Set the background color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'SHRI MATA VAISHNO DEVI',
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 160, 2),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                  height: 10), // Add some space between the two containers
              ExpandableContainer(
                isExpanded: isExpanded,
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                information: information,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpandableContainer extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;
  final String information;

  ExpandableContainer({
    required this.isExpanded,
    required this.onTap,
    required this.information,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 238, 222), // Set the background color
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              information,
              overflow:
                  isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              maxLines: isExpanded ? null : 2,
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                isExpanded ? 'Less' : 'More',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
