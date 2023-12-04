import 'package:flutter/material.dart';

class EntryGate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 241),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 249, 241),
        title: Text(
          'Bhawan',
          style: TextStyle(
            fontFamily: 'Samarkan',
            fontWeight: FontWeight.bold,
            color: Colors.orange,
            fontSize: 26,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Edge-to-edge container for the image
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height *
                0.3, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage('assets/Backgrounds/Bhawan2.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Container for text below the image
          Center(
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 249, 241),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                'Shri Mata Vaishno Devi Bhawan',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'The temple, at a height of 1,585 metres (5,200 ft) is 12 km from Katra on Trikuta hill. It is about 61 km from Jammu city.[10][11] A geological study of the Holy Cave has indicated its age to be nearly a million years. There is also a mention of the Trikuta hill in Rigveda, the place where the temple is located.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
