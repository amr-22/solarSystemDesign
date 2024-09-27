import 'package:flutter/material.dart';
import 'package:solor_system/Features/HomeScreen/ui/Widget/planetcontainer.dart';

class SolarSystemPageView extends StatefulWidget {
  const SolarSystemPageView({super.key});

  @override
  State<SolarSystemPageView> createState() => _SolarSystemPageViewState();
}

class _SolarSystemPageViewState extends State<SolarSystemPageView> {
  List<Map<String, dynamic>> planets = [
    {
      'planetName': 'Mercury',
      'nickName': 'Sunrunner',
      'imagePath': 'mercury.png',
      'temperature': '167',
      'distanceToEarth': '0.00001582 light years',
      'satellitesSent': 2,
      'surfaceArea': '7.48×10^7 km²',
      'rotationPeriod': 58.6, // Earth days
      'averageOrbitalSpeed': '47.87 km/s'
    },
    {
      'planetName': 'Venus',
      'nickName': 'Goddess',
      'imagePath': 'venus.png',
      'temperature': '464',
      'distanceToEarth': '0.0001134 light years',
      'satellitesSent': 42,
      'surfaceArea': '4.60×10^8 km²',
      'rotationPeriod': 243, // Earth days
      'averageOrbitalSpeed': '35.02 km/s'
    },
    {
      'planetName': 'Earth',
      'nickName': 'Home',
      'imagePath': 'earth.png',
      'temperature': '15',
      'distanceToEarth': '0 light years',
      'satellitesSent': 'Many (over 2,000 active)',
      'surfaceArea': '5.10×10^8 km²',
      'rotationPeriod': 1, // Earth day
      'averageOrbitalSpeed': '29.78 km/s'
    },
    {
      'planetName': 'Mars',
      'nickName': 'Neighbor',
      'imagePath': 'mars.png',
      'temperature': '-65',
      'distanceToEarth': '0.00022228 light years',
      'satellitesSent': 50,
      'surfaceArea': '1.45×10^8 km²',
      'rotationPeriod': 1.03, // Earth days
      'averageOrbitalSpeed': '24.07 km/s'
    },
    {
      'planetName': 'Jupiter',
      'nickName': 'Giant',
      'imagePath': 'jupiter.png',
      'temperature': '-108',
      'distanceToEarth': '0.00008236 light years',
      'satellitesSent': 9,
      'surfaceArea': '6.22×10^10 km²',
      'rotationPeriod': 0.41, // Earth days
      'averageOrbitalSpeed': '13.07 km/s'
    },
    {
      'planetName': 'Saturn',
      'nickName': 'Rings',
      'imagePath': 'saturn1.png',
      'temperature': '-139',
      'distanceToEarth': '0.00015056 light years',
      'satellitesSent': 4,
      'surfaceArea': '4.27×10^10 km²',
      'rotationPeriod': 0.45, // Earth days
      'averageOrbitalSpeed': '9.69 km/s'
    },
    {
      'planetName': 'Uranus',
      'nickName': 'Tilted',
      'imagePath': 'uranus.png',
      'temperature': '-195',
      'distanceToEarth': '0.0002544 light years',
      'satellitesSent': 1,
      'surfaceArea': '8.13×10^9 km²',
      'rotationPeriod': 0.72, // Earth days
      'averageOrbitalSpeed': '6.81 km/s'
    },
    {
      'planetName': 'Neptune',
      'nickName': 'Blue',
      'imagePath': 'neptune.png',
      'temperature': '-201',
      'distanceToEarth': '0.000402 light years',
      'satellitesSent': 1,
      'surfaceArea': '7.64×10^9 km²',
      'rotationPeriod': 0.67, // Earth days
      'averageOrbitalSpeed': '5.43 km/s'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: planets.length,
      itemBuilder: (context, index) {
        return PlanetContainer(
          planet: planets[index],
        );
      },
    );
  }
}
