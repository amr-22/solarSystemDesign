import 'package:flutter/material.dart';

class PlanetContainer extends StatefulWidget {
  const PlanetContainer({super.key, required this.planet});
  final Map planet;
  @override
  State<PlanetContainer> createState() => _PlanetContainerState();
}

class _PlanetContainerState extends State<PlanetContainer> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: 50,
          left: w * .25,
          width: w * .5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.planet["planetName"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Text(
                widget.planet["nickName"],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          width: w * 1.3,
          bottom: -h * .2,
          left: -w * .15,
          child: GestureDetector(
            child: Image.asset(
              "assets/images/${widget.planet['imagePath']}",
              fit: BoxFit.cover,
            ),
            onTap: () {
              print(widget.planet["planetName"]);
            },
          ),
        )
      ],
    );
  }
}
