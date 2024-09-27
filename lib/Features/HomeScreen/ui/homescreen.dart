import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solor_system/Features/HomeScreen/ui/Widget/solarsystempageview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
              height: h * .15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WELCOME \n",
                        style: TextStyle(
                            height: .8,
                            letterSpacing: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        "Amr Mostafa",
                        style: TextStyle(
                          height: .8,
                          letterSpacing: 4,
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ))
                  // Image.asset("assets/images/user.png"),
                ],
              ),
            ),
            SizedBox(
              height: h * .05,
            ),
            Container(
              height: h * .8,
              child: SolarSystemPageView(),
            ),
          ],
        ),
      ),
    );
  }
}
