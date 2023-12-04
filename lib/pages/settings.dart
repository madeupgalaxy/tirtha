import 'package:flutter/material.dart';
import 'package:tirtha/pages/about.dart';
import 'package:tirtha/pages/about.dart'; // Import the AboutPage

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
        ),
        backgroundColor: Color.fromARGB(255, 255, 249, 240),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 249, 240),
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSectionContainer(
              title: 'General Settings',
              onTap: () {
                // Handle general settings tap
              },
            ),
            _buildSectionContainer(
              title: 'Account Settings',
              onTap: () {
                // Handle account settings tap
              },
            ),
            _buildSectionContainer(
              title: 'Notifications',
              onTap: () {
                // Handle notifications tap
              },
            ),
            SizedBox(height: 16),
            _buildSectionContainer(
              title: 'About',
              onTap: () {
                // Navigate to the AboutPage when "About" is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionContainer(
      {required String title, required VoidCallback onTap}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        onTap: onTap,
      ),
    );
  }
}
