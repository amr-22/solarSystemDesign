import 'package:flutter/material.dart';

class Planetscreen extends StatelessWidget {
  const Planetscreen({super.key, required this.planet});
  final Map planet;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: w * .25,
              width: w * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    planet["planetName"],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    planet["nickName"],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 120,
                left: w * .25,
                width: w * .5,
                child: Image.asset("assets/images/${planet['imagePath']}")),
            Positioned(
              top: 130,
              left: w * .6,
              child: Container(
                width: w * .15,
                height: w * .15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(91, 0, 0, 0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.thermostat_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      planet["temperature"],
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: w * .25,
              width: w * .5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Distance From Earth",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white38,
                    ),
                  ),
                  Text(
                    planet["distanceToEarth"],
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                height: h * .5,
                width: w,
                top: h * .5,
                child: Container(
                  child: Column(
                    children: [
                      Card(
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blue[900]!.withOpacity(0.2),
                        child: Row(
                          children: [
                            SizedBox(
                              width: w * .05,
                            ),
                            const Icon(
                              Icons.speed_rounded,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: w * .2,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: h * .01,
                                ),
                                Text(
                                  "Average Orbital Speed",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .005,
                                ),
                                Text(
                                  planet["averageOrbitalSpeed"],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .01,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blue[900]!.withOpacity(0.2),
                        child: Row(
                          children: [
                            SizedBox(
                              width: w * .05,
                            ),
                            const Icon(
                              Icons.satellite_alt_rounded,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: w * .2,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: h * .01,
                                ),
                                Text(
                                  "Satellites",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .005,
                                ),
                                Text(
                                  planet["satellitesSent"].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .01,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blue[900]!.withOpacity(0.2),
                        child: Row(
                          children: [
                            SizedBox(
                              width: w * .05,
                            ),
                            const Icon(
                              Icons.architecture_sharp,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: w * .2,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: h * .01,
                                ),
                                Text(
                                  "Surface Area",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .005,
                                ),
                                Text(
                                  planet["surfaceArea"].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .01,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blue[900]!.withOpacity(0.2),
                        child: Row(
                          children: [
                            SizedBox(
                              width: w * .05,
                            ),
                            const Icon(
                              Icons.rotate_left_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: w * .2,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: h * .01,
                                ),
                                Text(
                                  "Rotation Period",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .005,
                                ),
                                Text(
                                  planet["rotationPeriod"].toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: h * .01,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
