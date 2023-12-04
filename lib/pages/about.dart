import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 240),
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
        ),
        backgroundColor: Color.fromARGB(255, 255, 249, 240),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 249, 240),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tirtha ',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Samarkan',
                  color: Colors.orange),
            ),
            SizedBox(height: 16.0),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(16.0),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              child: Text(
                'Orginaly built this app under Project Ananta , now working to make it better',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(height: 16.0),
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                child: Text(
                  'Made with ❤️ by MadeupGalaxy 🇮🇳',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
