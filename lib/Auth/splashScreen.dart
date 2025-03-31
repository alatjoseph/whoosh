import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whoosh/Utils/colours.dart';
import 'package:whoosh/Utils/images.dart';

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
      Timer(const Duration(seconds: 2), () async {
        context.go('/login');
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
