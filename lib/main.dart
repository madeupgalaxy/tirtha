import 'package:flutter/material.dart';
import 'package:tirtha/pages/chat/saarthi.dart';
import 'package:tirtha/pages/welcome.dart';
import 'package:tirtha/pages/chat/saarthi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Saarthi(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
