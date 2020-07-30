import 'package:flutter/material.dart';
import 'package:wedding/pages/landing_pages/landing_pages.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPages(),
    );
  }
}
