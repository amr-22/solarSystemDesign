import 'package:flutter/material.dart';
import 'package:solor_system/splashscreen/ui/splashscreen.dart';

class SolarSystem extends StatelessWidget {
  const SolarSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
