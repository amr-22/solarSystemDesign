import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
          left: 50,
          bottom: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "EXPLORE",
                style: TextStyle(
                  letterSpacing: 8,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const Text(
                "SOLAR",
                style: TextStyle(
                  letterSpacing: 4,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                "SYSTEM",
                style: TextStyle(
                  letterSpacing: 4,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("go");
                },
                child: const Icon(
                  size: 50,
                  Icons.arrow_forward,
                  color: Colors.white30,
                ),
              )
            ],
          ))
    ]));
  }
}
