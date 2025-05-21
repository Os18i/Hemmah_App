import 'package:flutter/material.dart';
import 'package:hemmah_app/screens/splash_screen.dart';

void main() {
  runApp(const HemmahApp());
}

class HemmahApp extends StatelessWidget {
  const HemmahApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'همة',
      theme: ThemeData(fontFamily: 'CascadiaMono'),
      home: const SplashScreen(),
    );
  }
}
