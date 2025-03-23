import 'package:flutter/material.dart';

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
        logoSize = screenWidth * 0.4; // Set logo size dynamically
        topPosition = screenHeight / 2 - logoSize / 2; // Move to center
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut, // Bounce when landing
              top: topPosition,
              left: (screenWidth - logoSize) /
                  2, // Ensure it's centered horizontally
              child: SizedBox(
                height: logoSize,
                width: logoSize,
                child: Image.asset('assets/logo.png', fit: BoxFit.contain),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
