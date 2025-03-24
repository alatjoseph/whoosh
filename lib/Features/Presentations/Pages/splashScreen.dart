import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whoosh/Features/Presentations/Pages/landingPage.dart';
import 'package:whoosh/Features/Presentations/Resourses/colours.dart';
import 'package:whoosh/Features/Presentations/Resourses/images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double topPosition = 0.0;
  double logoSize = 0.0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      double screenHeight = MediaQuery.of(context).size.height;
      double screenWidth = MediaQuery.of(context).size.width;

      setState(() {
        logoSize = screenWidth * 0.8; 
        topPosition = screenHeight / 2 - logoSize / 2; 
      });
       Timer(const Duration(seconds: 2), () async{
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryColour,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut,
              top: topPosition,
              left: (screenWidth - logoSize) / 2,
              child: SizedBox(
                height: logoSize,
                width: logoSize,
                child: Image.asset(logoImage, fit: BoxFit.contain),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
